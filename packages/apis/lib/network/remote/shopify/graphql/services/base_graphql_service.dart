import 'package:apis/dio_config/shopify_graphql_client.dart';
import 'package:gql/language.dart' as gql;

/// 🏗️ Base GraphQL Service
///
/// Provides common functionality for all GraphQL services.
/// This service handles the basic GraphQL operations and can be extended
/// by specific domain services.
abstract class BaseGraphQLService {
  final ShopifyGraphQLClient _graphqlClient;

  BaseGraphQLService(this._graphqlClient);

  /// Execute a GraphQL query with string query
  Future<Map<String, dynamic>> query({
    required String query,
    Map<String, dynamic>? variables,
  }) async {
    final result = await _graphqlClient.query(
      query: query,
      variables: variables,
    );

    // Debug: Log the raw response
    print('BaseGraphQLService Query Response: $result');

    return result;
  }

  /// Execute a GraphQL query with DocumentNode (for codegen)
  Future<Map<String, dynamic>> queryWithDocument({
    required dynamic documentNode,
    Map<String, dynamic>? variables,
  }) async {
    // Convert DocumentNode to string if needed
    String queryString;
    if (documentNode is String) {
      queryString = documentNode;
    } else {
      // For DocumentNode objects, use the gql print function
      try {
        queryString = gql.printNode(documentNode);
      } catch (e) {
        // Fallback: try toString or throw error
        queryString = documentNode.toString();
        if (queryString.startsWith('Instance of')) {
          throw Exception(
              "Could not extract query string from DocumentNode. Please ensure you're using a valid gql DocumentNode. Error: $e");
        }
      }
    }
    return await _graphqlClient.query(
      query: queryString,
      variables: variables,
    );
  }

  /// Execute a GraphQL mutation with string mutation
  Future<Map<String, dynamic>> mutate({
    required String mutation,
    Map<String, dynamic>? variables,
  }) async {
    return await _graphqlClient.mutate(
      mutation: mutation,
      variables: variables,
    );
  }

  /// Execute a GraphQL mutation with DocumentNode (for codegen)
  Future<Map<String, dynamic>> mutateWithDocument({
    required dynamic documentNode,
    Map<String, dynamic>? variables,
  }) async {
    // Convert DocumentNode to string if needed
    String mutationString;
    if (documentNode is String) {
      mutationString = documentNode;
    } else {
      // For DocumentNode objects, use the gql print function
      try {
        mutationString = gql.printNode(documentNode);
      } catch (e) {
        // Fallback: try toString or throw error
        mutationString = documentNode.toString();
        if (mutationString.startsWith('Instance of')) {
          throw Exception(
              "Could not extract mutation string from DocumentNode. Please ensure you're using a valid gql DocumentNode. Error: $e");
        }
      }
    }
    return await _graphqlClient.mutate(
      mutation: mutationString,
      variables: variables,
    );
  }

  /// Get the GraphQL client instance
  ShopifyGraphQLClient get graphqlClient => _graphqlClient;

  /// Check if the GraphQL client is initialized (always true for new static approach)
  bool get isInitialized => true;

  /// Initialize the GraphQL client (not needed for new static approach)
  Future<void> initialize() async {
    // No initialization needed for new static approach
  }

  /// Reinitialize the GraphQL client (not needed for new static approach)
  Future<void> reinitialize() async {
    // No reinitialization needed for new static approach
  }
}
