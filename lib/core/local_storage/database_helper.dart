import 'dart:developer';

import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

import '../../features/main/data/model/data/product_data/product_data.dart';
import '../../features/main/data/model/response/product/product_list_response.dart';

class DatabaseHelper {
  static Database? _database;
  static final DatabaseHelper instance = DatabaseHelper._internal();

  DatabaseHelper._internal();

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDatabase();
    return _database!;
  }

  Future<Database> _initDatabase() async {
    final databasesPath = await getDatabasesPath();
    final path = join(databasesPath, 'products.db');

    return await openDatabase(
      path,
      version: 1,
      onCreate: (db, version) async {
        await db.execute('''
        CREATE TABLE products (
          tovarId TEXT PRIMARY KEY,
          tovar TEXT,
          yedIzm TEXT,
          ostatka INTEGER,
          barcode TEXT,
          sena INTEGER,
          optomNarx INTEGER,
          type INTEGER,
          kategoriyaid TEXT,  
          isFavourite INTEGER,
          count INTEGER DEFAULT 0,
          payment TEXT DEFAULT '' 
        )
      ''');
      },
    );
  }

  Future<void> insertProduct(ProductData product) async {
    final db = await database;

    await db.insert(
      'products',
      product.toMap(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  Future<void> saveProducts(List<ProductItem> productItems) async {
    final db = await database;
    var time = DateTime.now().millisecondsSinceEpoch;

    log('saving products -> ${productItems.length}');

    final List<Map<String, dynamic>> previousProducts = await db.query(
      'products',
      columns: [
        'tovarId',
        'isFavourite',
        'count',
        'payment'
      ], // Include payment column
    );

    final Map<String, Map<String, dynamic>> oldProductMap = {
      for (var p in previousProducts)
        p['tovarId']: {
          'isFavourite': p['isFavourite'],
          'count': p['count'],
          'payment': p['payment']
        }
    };

    await db.delete('products');

    final batch = db.batch();
    for (var item in productItems) {
      final isFavourite = oldProductMap[item.tovarId]?['isFavourite'] ?? 0;
      final count = oldProductMap[item.tovarId]?['count'] ?? 0;
      final payment = oldProductMap[item.tovarId]?['payment'] ?? '';
      final product = ProductData.fromProductItem(item, isFavourite == 1, count,
          payment: payment);
      batch.insert('products', product.toMap(),
          conflictAlgorithm: ConflictAlgorithm.replace);
    }
    await batch.commit();

    log('products saved in ${DateTime.now().millisecondsSinceEpoch - time} ms');
  }

  Future<List<ProductData>> getProductsByCategory(String id) async {
    final db = await database;

    final List<Map<String, dynamic>> maps = await db.query(
      'products',
      where: 'kategoriyaid = ?',
      whereArgs: [id],
    );

    return List.generate(maps.length, (i) {
      return ProductData.fromMap(maps[i]);
    });
  }

  Future<List<ProductData>> getAllProducts() async {
    final db = await database;

    final List<Map<String, dynamic>> maps = await db.query('products');

    return List.generate(maps.length, (i) {
      return ProductData.fromMap(maps[i]);
    });
  }

  Future<ProductData?> getProductById(String id) async {
    final db = await database;

    final List<Map<String, dynamic>> maps = await db.query(
      'products',
      where: 'tovarId = ?',
      whereArgs: [id],
    );

    if (maps.isNotEmpty) {
      return ProductData.fromMap(maps.first);
    } else {
      return null;
    }
  }

  Future<ProductData> updateFavouriteStatus(String id) async {
    final db = await database;

    final isFavourite = !((await getProductById(id))?.isFavourite ?? false);

    await db.update(
      'products',
      {'isFavourite': isFavourite ? 1 : 0},
      where: 'tovarId = ?',
      whereArgs: [id],
    );
    final temp = await getProductById(id);

    return temp!;
  }

  Future<List<ProductData>> getFavouriteProducts() async {
    final db = await database;

    final List<Map<String, dynamic>> maps = await db.query(
      'products',
      where: 'isFavourite = ?',
      whereArgs: [1],
    );

    return maps.map((map) => ProductData.fromMap(map)).toList();
  }

  Future<List<ProductData>> getCartProducts() async {
    final db = await database;
    final List<Map<String, dynamic>> maps = await db.query(
      'products',
      where: 'count > 0',
    );

    return maps.map((map) => ProductData.fromMap(map)).toList();
  }

  Future<void> updateProductCount(
      String id, int newCount, String payment) async {
    final db = await database;
    await db.update(
      'products',
      {'count': newCount, 'payment': payment},
      where: 'tovarId = ?',
      whereArgs: [id],
    );
  }

  Future<void> deleteFromCart(String id) async {
    await updateProductCount(id, 0, '');
  }

  Future<ProductData?> getProductByBarCode(String barcode) async {
    final db = await database;
    final List<Map<String, dynamic>> maps = await db.query(
      'products',
      where: 'barcode = ?',
      whereArgs: [barcode],
    );

    final products = maps.map((map) => ProductData.fromMap(map)).toList();

    if (products.isNotEmpty) {
      return products.first;
    }

    return null;
  }

  Future<void> clearCart() async {
    final db = await database;
    await db.update(
      'products',
      {'count': 0, 'payment': ''},
      where: 'count > 0',
    );
  }
}
