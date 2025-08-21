import 'package:apis/network/remote/shopify/graphql/customers/abstract/customer_graphql_service.dart';
import 'package:apis/network/remote/shopify/graphql/customers/graphql_models/mutations/customer_delete.graphql.dart';
import 'package:api_explorer/services/api_request_handler.dart';
import 'package:api_explorer/services/api_service_registry.dart';
import 'package:get_it/get_it.dart';

///*******************************************************************
//************ 🚫 DISABLE CUSTOMER GRAPHQL HANDLER 🚫 ************
///*******************************************************************

class DisableCustomerGraphQLHandler implements ApiRequestHandler {
  @override
  List<String> get supportedMethods => ['POST'];

  @override
  Map<String, List<ApiField>> get requiredFields => {
        'POST': [
          const ApiField(
            name: 'customerId',
            label: 'Customer ID *',
            hint: 'Customer ID to disable (e.g., gid://shopify/Customer/123)',
            isRequired: true,
            type: ApiFieldType.text,
          ),
        ],
      };

  @override
  Future<Map<String, dynamic>> handleRequest(
    String method,
    Map<String, String> params,
  ) async {
    // Only handle POST requests for GraphQL
    if (method != 'POST') {
      return {
        "status": "error",
        "message":
            "Method $method not supported for GraphQL Disable Customer API",
        "timestamp": DateTime.now().toIso8601String(),
      };
    }

    try {
      // Extract parameters - flexible to accept both 'customerId' and 'first'
      final customerId = params['customerId'] ?? params['first'];

      // Debug logging - MORE VISIBLE
      print('🚨🚨🚨 DisableCustomerGraphQLHandler - DEBUG INFO 🚨🚨🚨');
      print('🚨 Method: $method');
      print('🚨 All params: $params');
      print('🚨 Params keys: ${params.keys.toList()}');
      print('🚨 Params values: ${params.values.toList()}');
      print('🚨 Extracted customerId: "$customerId"');
      print('🚨 CustomerId type: ${customerId.runtimeType}');
      print('🚨🚨🚨 END DEBUG INFO 🚨🚨🚨');

      // Validate customer ID - more flexible validation
      if (customerId == null || customerId.trim().isEmpty) {
        return {
          "status": "error",
          "message":
              "Customer ID is required and cannot be empty. Please enter a valid Customer ID.",
          "timestamp": DateTime.now().toIso8601String(),
        };
      }

      // Validate Shopify GraphQL ID format
      if (!customerId.startsWith('gid://shopify/Customer/')) {
        return {
          "status": "error",
          "message":
              "Invalid Customer ID format. Must be in format: gid://shopify/Customer/123",
          "timestamp": DateTime.now().toIso8601String(),
        };
      }

      // Call the GraphQL service
      final response = await GetIt.I<CustomerGraphQLService>().deleteCustomer(
        input: Variables$Mutation$DeleteCustomer(
          id: customerId,
        ),
      );

      // Return success response
      return {
        "status": "success",
        "message": "Customer deleted successfully via GraphQL",
        "data": response.toJson(),
        "query_type": "DeleteCustomer",
        "graphql_operation": "customerDelete",
        "customer_id": customerId,
        "timestamp": DateTime.now().toIso8601String(),
      };
    } catch (e) {
      // Error handling
      return {
        "status": "error",
        "message": "GraphQL Error",
        "details": "Exception: ${e.toString()}",
        "timestamp": DateTime.now().toIso8601String(),
      };
    }
  }

  /// 📊 Get handler information
  Map<String, dynamic> getHandlerInfo() {
    return {
      "handler_name": "DisableCustomerGraphQLHandler",
      "description": "Disables a customer using Shopify GraphQL API",
      "supported_methods": supportedMethods,
      "required_parameters": ["customerId"],
      "optional_parameters": [],
      "graphql_operation": "customerDisable",
      "examples": [
        {
          "description": "Disable customer by ID",
          "method": "POST",
          "parameters": {"customerId": "gid://shopify/Customer/123456789"}
        }
      ]
    };
  }
}
