import 'package:apis/network/remote/shopify/graphql/customers/abstract/customer_service.dart';
import 'package:apis/network/remote/shopify/graphql/customers/graphql_models/mutations/create_customer.graphql.dart';
import 'package:apis/network/remote/shopify/graphql/customers/graphql_models/mutations/update_customer.graphql.dart';
import 'package:apis/network/remote/shopify/graphql/customers/graphql_models/mutations/customer_delete.graphql.dart';
import 'package:apis/network/remote/shopify/graphql/customers/graphql_models/queries/customer.graphql.dart';
import 'package:apis/network/remote/shopify/graphql/customers/graphql_models/queries/customers.graphql.dart';
import 'package:apis/network/remote/shopify/graphql/customers/graphql_models/queries/customers_count.graphql.dart';
import 'package:apis/network/remote/shopify/graphql/services/base_graphql_service.dart';
import 'package:apis/network/remote/shopify/graphql/annotations/graphql_annotations.dart';
import 'package:injectable/injectable.dart';

/// 👥 Customer GraphQL Service Implementation
///
/// Implements all customer-related GraphQL operations using the base GraphQL service.
/// Uses codegen-generated types for type safety.
@Injectable(as: CustomerGraphQLService)
class CustomerGraphQLServiceImpl extends BaseGraphQLService
    implements CustomerGraphQLService {
  CustomerGraphQLServiceImpl(super.graphqlClient);

  @override
  @GraphQLQuery()
  Future<Query$Customers> getCustomers({
    required int first,
    String? after,
    String? query,
  }) async {
    final result = await executeQueryAuto(
      documentNode: documentNodeQueryCustomers,
      parameters: {'first': first, 'after': after, 'query': query},
    );

    return Query$Customers.fromJson(result);
  }

  @override
  @GraphQLQuery()
  Future<Query$Customer> getCustomer({
    required String id,
  }) async {
    final result = await executeQueryAuto(
      documentNode: documentNodeQueryCustomer,
      parameters: {'id': id},
    );

    return Query$Customer.fromJson(result);
  }

  @override
  @GraphQLMutation()
  Future<Mutation$CreateCustomer> createCustomer({
    required Variables$Mutation$CreateCustomer input,
  }) async {
    final result = await executeMutationAuto(
      documentNode: documentNodeMutationCreateCustomer,
      parameters: {'input': input},
    );

    return Mutation$CreateCustomer.fromJson(result);
  }

  @override
  @GraphQLMutation()
  Future<Mutation$UpdateCustomer> updateCustomer({
    required Variables$Mutation$UpdateCustomer input,
  }) async {
    final result = await executeMutationAuto(
      documentNode: documentNodeMutationUpdateCustomer,
      parameters: {'input': input},
    );

    return Mutation$UpdateCustomer.fromJson(result);
  }

  @override
  @GraphQLMutation()
  Future<Mutation$DeleteCustomer> deleteCustomer({
    required Variables$Mutation$DeleteCustomer input,
  }) async {
    final result = await executeMutationAuto(
      documentNode: documentNodeMutationDeleteCustomer,
      parameters: {'input': input},
    );

    return Mutation$DeleteCustomer.fromJson(result);
  }

  @override
  @GraphQLQuery()
  Future<Query$CustomersCount> getCustomersCount({
    String? query,
  }) async {
    final result = await executeQueryAuto(
      documentNode: documentNodeQueryCustomersCount,
      parameters: {'query': query},
    );

    return Query$CustomersCount.fromJson(result);
  }
}
