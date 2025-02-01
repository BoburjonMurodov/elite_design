import 'package:elite_design/features/main/data/model/data/product_data/product_data.dart';

import '../../../../core/utils/result.dart';
import '../../data/model/data/category_item/category_item.dart';
import '../../data/model/response/product/product_list_response.dart';

abstract class ProductRepository {
  Future<Result<List<CategoryItem>>> getCategories();

  Future<Result<List<ProductItem>>> getProductsFromRemote();

  Future<List<ProductData>> getProductsByCategory(String id);

  Future<List<ProductData>> getAllProducts();

  Future<List<ProductData>> getFavouriteProducts();

  Future<ProductData> updateFavouriteStatus(String id);

  Future<void> addProductToCart(String id, int count, String payment);
}
