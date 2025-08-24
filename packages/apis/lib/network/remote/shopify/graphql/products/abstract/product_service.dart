import 'package:apis/network/remote/shopify/graphql/products/graphql_models/mutations/create_product.graphql.dart';
import 'package:apis/network/remote/shopify/graphql/products/graphql_models/mutations/update_product.graphql.dart';
import 'package:apis/network/remote/shopify/graphql/products/graphql_models/queries/product.graphql.dart';
import 'package:apis/network/remote/shopify/graphql/products/graphql_models/queries/products.graphql.dart';
import 'package:apis/network/remote/shopify/graphql/products/graphql_models/queries/products_count.graphql.dart';

/// 🛍️ Abstract Product GraphQL Service
///
/// Defines the contract for all product-related GraphQL operations.
/// Uses codegen-generated types for type safety.
abstract class ProductGraphQLService {
  /// 📋 Get products with pagination
  Future<Query$Products> getProducts({
    required int first,
    String? after,
    String? query,
  });

  /// 📄 Get a single product by ID
  Future<Query$Product> getProduct({
    required String id,
  });

  /// ➕ Create a new product
  Future<Mutation$CreateProduct> createProduct({
    required Variables$Mutation$CreateProduct input,
  });

  /// ✏️ Update an existing product
  Future<Mutation$UpdateProduct> updateProduct({
    required Variables$Mutation$UpdateProduct input,
  });

  /// 🔢 Get total count of products
  Future<Query$ProductsCount> getProductsCount({
    String? query,
  });

}
