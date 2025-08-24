import 'package:apis/network/remote/shopify/graphql/products/abstract/product_service.dart';
import 'package:apis/network/remote/shopify/graphql/products/graphql_models/mutations/create_product.graphql.dart';
import 'package:apis/network/remote/shopify/graphql/products/graphql_models/mutations/update_product.graphql.dart';
import 'package:apis/network/remote/shopify/graphql/products/graphql_models/queries/product.graphql.dart';
import 'package:apis/network/remote/shopify/graphql/products/graphql_models/queries/products.graphql.dart';
import 'package:apis/network/remote/shopify/graphql/products/graphql_models/queries/products_count.graphql.dart';
import 'package:apis/network/remote/shopify/graphql/services/base_graphql_service.dart';
import 'package:apis/network/remote/shopify/graphql/annotations/graphql_annotations.dart';
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
  @GraphQLQuery()
  Future<Query$Products> getProducts({
    required int first,
    String? after,
    String? query,
  }) async {
    final result = await executeQueryAuto(
      documentNode: documentNodeQueryProducts,
      parameters: {'first': first, 'after': after, 'query': query},
    );

    return Query$Products.fromJson(result);
  }

  @override
  @GraphQLQuery()
  Future<Query$Product> getProduct({
    required String id,
  }) async {
    final result = await executeQueryAuto(
      documentNode: documentNodeQueryProduct,
      parameters: {'id': id},
    );

    return Query$Product.fromJson(result);
  }

  @override
  @GraphQLMutation()
  Future<Mutation$CreateProduct> createProduct({
    required Variables$Mutation$CreateProduct input,
  }) async {
    final result = await executeMutationAuto(
      documentNode: documentNodeMutationCreateProduct,
      parameters: {'input': input},
    );

    return Mutation$CreateProduct.fromJson(result);
  }

  @override
  @GraphQLMutation()
  Future<Mutation$UpdateProduct> updateProduct({
    required Variables$Mutation$UpdateProduct input,
  }) async {
    final result = await executeMutationAuto(
      documentNode: documentNodeMutationUpdateProduct,
      parameters: {'input': input},
    );

    return Mutation$UpdateProduct.fromJson(result);
  }

  @override
  @GraphQLQuery()
  Future<Query$ProductsCount> getProductsCount({
    String? query,
  }) async {
    final result = await executeQueryAuto(
      documentNode: documentNodeQueryProductsCount,
      parameters: {'query': query},
    );

    return Query$ProductsCount.fromJson(result);
  }

}
