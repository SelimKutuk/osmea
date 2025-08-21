import 'package:apis/network/remote/shopify/graphql/customers/abstract/customer_graphql_service.dart';
import 'package:apis/network/remote/shopify/graphql/customers/graphql_models/queries/customer.graphql.dart';
import 'package:api_explorer/services/api_request_handler.dart';
import 'package:api_explorer/services/api_service_registry.dart';
import 'package:get_it/get_it.dart';

///*******************************************************************
//************ 👤 GET CUSTOMER HANDLER 👤 ************
///*******************************************************************

class GetCustomerHandler implements ApiRequestHandler {
  @override
  Future<Map<String, dynamic>> handleRequest(
    String method,
    Map<String, String> params,
  ) async {
    try {
      // Extract parameters - flexible to accept both 'customerId' and 'first'
      final customerId = params['customerId'] ?? params['first'];

      // Debug logging - MORE VISIBLE
      print('🚨🚨🚨 GetCustomerHandler - DEBUG INFO 🚨🚨🚨');
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

      final response = await GetIt.I<CustomerGraphQLService>().getCustomer(
        id: customerId,
      );

      return {
        "status": "success",
        "message": "Customer retrieved successfully",
        "data": response.toJson(),
        "query_type": "GetCustomer",
        "customer_id": customerId,
        "timestamp": DateTime.now().toIso8601String(),
      };
    } catch (e) {
      return {
        "status": "error",
        "message": "Failed to get customer: ${e.toString()}",
        "timestamp": DateTime.now().toIso8601String(),
      };
    }
  }

  @override
  List<String> get supportedMethods => ['POST'];

  @override
  Map<String, List<ApiField>> get requiredFields => {
        'POST': [
          const ApiField(
            name: 'customerId',
            label: 'Customer ID *',
            hint:
                'The ID of the customer to retrieve (e.g., gid://shopify/Customer/123)',
            isRequired: true,
            type: ApiFieldType.text,
          ),
        ],
      };
}
