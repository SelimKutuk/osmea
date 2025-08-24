import 'package:apis/network/remote/shopify/graphql/webhooks/abstract/webhooks_service.dart';
import 'package:api_explorer/services/api_request_handler.dart';
import 'package:api_explorer/services/api_service_registry.dart';
import 'package:flutter/foundation.dart';
import 'package:get_it/get_it.dart';

///*******************************************************************
//************ 🔔 GET WEBHOOK SUBSCRIPTIONS COUNT HANDLER 🔔 ************
///*******************************************************************

class GetWebhookSubscriptionsCountHandler implements ApiRequestHandler {
  @override
  Future<Map<String, dynamic>> handleRequest(
    String method,
    Map<String, String> params,
  ) async {
    try {
      final query = params['query'];

      debugPrint('🔔 GetWebhookSubscriptionsCountHandler - DEBUG INFO 🔔');
      debugPrint('🔔 Method: $method');
      debugPrint('🔔 All params: $params');
      debugPrint('🔔 Query: $query');
      debugPrint('🔔 END DEBUG INFO 🔔');

      final response = await GetIt.I<WebhooksGraphQLService>().webhookSubscriptionsCount(
        query: query,
      );

      return {
        "status": "success",
        "message": "Webhook subscriptions count retrieved successfully",
        "data": response.toJson(),
        "query_type": "GetWebhookSubscriptionsCount",
        "timestamp": DateTime.now().toIso8601String(),
      };
    } catch (e) {
      debugPrint('🔔 GetWebhookSubscriptionsCountHandler - ERROR: $e');
      return {
        "status": "error",
        "message": "Failed to get webhook subscriptions count: ${e.toString()}",
        "timestamp": DateTime.now().toIso8601String(),
      };
    }
  }

  @override
  List<String> get supportedMethods => ['QUERY'];

  @override
  Map<String, List<ApiField>> get requiredFields => {
        'QUERY': [
          const ApiField(
            name: 'query',
            label: 'Query',
            hint: 'Search query to filter webhook subscriptions count',
            isRequired: false,
            type: ApiFieldType.text,
          ),
        ],
      };
}
