import 'package:apis/network/remote/shopify/graphql/products/abstract/product_service.dart';
import 'package:apis/network/remote/shopify/graphql/products/graphql_models/mutations/create_product.graphql.dart';
import 'package:apis/network/remote/shopify/graphql/products/graphql_models/mutations/update_product.graphql.dart';
import 'package:apis/network/remote/shopify/graphql/products/graphql_models/queries/product.graphql.dart';
import 'package:apis/network/remote/shopify/graphql/products/graphql_models/queries/products.graphql.dart';
import 'package:apis/network/remote/shopify/graphql/products/graphql_models/queries/products_count.graphql.dart';
import 'package:apis/network/remote/shopify/graphql/services/base_graphql_service.dart';
import 'package:injectable/injectable.dart';

/// 🛍️ Product GraphQL Service Implementation
///
/// Implements all product-related GraphQL operations using the base GraphQL service.
/// Uses codegen-generated types for type safety.
@Injectable(as: ProductGraphQLService)
class ProductGraphQLServiceImpl extends BaseGraphQLService
    implements ProductGraphQLService {
  ProductGraphQLServiceImpl(super.graphqlClient);

  @override
  Future<Query$Products> getProducts({
    required int first,
    String? after,
    String? query,
  }) async {
    final result = await this.queryWithDocument(
      documentNode: documentNodeQueryProducts,
      variables: Variables$Query$Products(
        first: first,
        after: after,
        query: query,
      ).toJson(),
    );

    // Debug: Log the response
    print('GraphQL Response: $result');
    print('GraphQL Response Data: ${result['data']}');
    print('GraphQL Response Data Type: ${result['data'].runtimeType}');

    if (result['data'] == null) {
      throw Exception('GraphQL response data is null: $result');
    }

    try {
      return Query$Products.fromJson(result['data'] as Map<String, dynamic>);
    } catch (e, stackTrace) {
      print('Error parsing Query\$Products: $e');
      print('Stack trace: $stackTrace');
      print('Data being parsed: ${result['data']}');
      rethrow;
    }
  }

  @override
  Future<Query$Product> getProduct({
    required String id,
  }) async {
    final result = await this.queryWithDocument(
      documentNode: documentNodeQueryProduct,
      variables: Variables$Query$Product(
        id: id,
      ).toJson(),
    );

    // Debug: Log the response
    print('Get Product Response: $result');
    print('Get Product Response Data: ${result['data']}');

    if (result['data'] == null) {
      throw Exception('GraphQL response data is null: $result');
    }

    try {
      return Query$Product.fromJson(result['data'] as Map<String, dynamic>);
    } catch (e, stackTrace) {
      print('Error parsing Query\$Product: $e');
      print('Stack trace: $stackTrace');
      print('Data being parsed: ${result['data']}');
      rethrow;
    }
  }

  @override
  Future<Mutation$CreateProduct> createProduct({
    required Variables$Mutation$CreateProduct input,
  }) async {
    final result = await this.mutateWithDocument(
      documentNode: documentNodeMutationCreateProduct,
      variables: input.toJson(),
    );

    // Debug: Log the response
    print('Create Product Response: $result');
    print('Create Product Response Data: ${result['data']}');

    if (result['data'] == null) {
      throw Exception('GraphQL response data is null: $result');
    }

    try {
      return Mutation$CreateProduct.fromJson(
          result['data'] as Map<String, dynamic>);
    } catch (e, stackTrace) {
      print('Error parsing Mutation\$CreateProduct: $e');
      print('Stack trace: $stackTrace');
      print('Data being parsed: ${result['data']}');
      rethrow;
    }
  }

  @override
  Future<Mutation$UpdateProduct> updateProduct({
    required Variables$Mutation$UpdateProduct input,
  }) async {
    final result = await this.mutateWithDocument(
      documentNode: documentNodeMutationUpdateProduct,
      variables: input.toJson(),
    );

    // Debug: Log the response
    print('Update Product Response: $result');
    print('Update Product Response Data: ${result['data']}');

    if (result['data'] == null) {
      throw Exception('GraphQL response data is null: $result');
    }

    try {
      return Mutation$UpdateProduct.fromJson(
          result['data'] as Map<String, dynamic>);
    } catch (e, stackTrace) {
      print('Error parsing Mutation\$UpdateProduct: $e');
      print('Stack trace: $stackTrace');
      print('Data being parsed: ${result['data']}');
      rethrow;
    }
  }

  @override
  Future<Query$ProductsCount> getProductsCount({
    String? query,
  }) async {
    final result = await this.queryWithDocument(
      documentNode: documentNodeQueryProductsCount,
      variables: Variables$Query$ProductsCount(
        query: query,
      ).toJson(),
    );

    return Query$ProductsCount.fromJson(result['data'] as Map<String, dynamic>);
  }

  @override
  Future<Query$Products> searchProducts({
    required String query,
    required int first,
    String? after,
  }) async {
    return await getProducts(
      first: first,
      after: after,
      query: query,
    );
  }

  @override
  Future<Query$Products> getProductsByTag({
    required String tag,
    required int first,
    String? after,
  }) async {
    return await getProducts(
      first: first,
      after: after,
      query: 'tag:$tag',
    );
  }

  @override
  Future<Query$Products> getProductsByVendor({
    required String vendor,
    required int first,
    String? after,
  }) async {
    return await getProducts(
      first: first,
      after: after,
      query: 'vendor:$vendor',
    );
  }

  @override
  Future<Query$Products> getProductsByCollection({
    required String collectionId,
    required int first,
    String? after,
  }) async {
    // For collection-based queries, we might need a different approach
    // This is a simplified implementation
    return await getProducts(
      first: first,
      after: after,
      query: 'collection_id:$collectionId',
    );
  }
}
