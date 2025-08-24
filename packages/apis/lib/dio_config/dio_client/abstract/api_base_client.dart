import 'package:dio/dio.dart';

/// 🌐 Abstract Base Client for Dio HTTP Client
/// Defines the contract for all Dio-based HTTP clients
abstract class ApiBaseClient {
  /// 🏁 Creates and configures a Dio instance with default options and interceptors
  Dio starter();

  /// 🛡️ Sets up proxy settings for QA environments
  void setupProxySettings(Dio dio);

  /// 📂 Prepares any necessary resources (cookies, certificates, etc.)
  Future<void> prepareResources();

  /// 🗑️ Disposes any resources
  void dispose();
}

/// 🌐 Abstract Base Client for GraphQL operations
abstract class GraphQLBaseClient {
  /// 🏁 Creates and configures a Dio instance for GraphQL
  Dio createGraphQLDio();

  /// 🔍 Execute a GraphQL query
  Future<Map<String, dynamic>> query({
    required String query,
    Map<String, dynamic>? variables,
  });

  /// ✏️ Execute a GraphQL mutation
  Future<Map<String, dynamic>> mutate({
    required String mutation,
    Map<String, dynamic>? variables,
  });

  /// 🛡️ Sets up proxy settings for QA environments
  void setupProxySettings(Dio dio);

  /// 🗑️ Disposes any resources
  void dispose();
}
