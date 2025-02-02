import 'package:elite_design/features/main/data/model/data/client/client_item.dart';
import 'package:elite_design/features/main/data/model/data/product_data/product_data.dart';
import 'package:elite_design/features/main/data/model/request/check_products_request.dart';
import 'package:elite_design/features/main/data/model/request/order/order_request.dart';

import '../../../../core/utils/result.dart';
import '../../data/model/data/category_item/category_item.dart';
import '../../data/model/response/product/product_list_response.dart';

abstract class ProductRepository {
  Future<Result<List<ProductItem>>> getProductsFromRemote();

  Future<ProductData> getProductById(String id);

  Future<Result<List<CategoryItem>>> getCategories();
  Future<List<ProductData>> getProductsByCategory(String id);
  Future<List<ProductData>> getAllProducts();
  Future<List<ProductData>> getFavouriteProducts();
  Future<ProductData> updateFavouriteStatus(String id);

  Future<List<ProductData>> getProductsInCart();
  Future<void> deleteProductFromCart(String id);
  Future<void> updateProductCount(String id, int count, String payment);
  Future<void> addProductToCart(String id, int count, String payment);
  Future<void> clearCart();

  Future<ProductData?> getProductByBarCode(String barcode);

  Future<Result<List<ProductItem>>> checkProducts(CheckProductsRequest products);
  Future<Result<void>> order(OrderRequest order);
}

