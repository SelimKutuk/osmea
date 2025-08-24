import 'package:apis/network/remote/shopify/graphql/webhooks/graphql_models/queries/webhook_subscriptions_count.graphql.dart';
import 'package:apis/network/remote/shopify/graphql/webhooks/graphql_models/queries/webhook_subscriptions.graphql.dart';
import 'package:apis/network/remote/shopify/graphql/webhooks/graphql_models/queries/webhook_subscription.graphql.dart';

/// 🔗 Abstract Webhooks GraphQL Service
///
/// Defines the contract for all webhook-related GraphQL operations.
/// Uses codegen-generated types for type safety.
/// Focuses on webhook-specific operations like endpoint management, topic filtering, and delivery status.
abstract class WebhooksGraphQLService {
  /// 🔢 Get total count of webhook subscriptions
  Future<Query$WebhookSubscriptionsCount> webhookSubscriptionsCount({
    String? query,
  });

  /// 📋 Get webhook subscriptions with pagination
  Future<Query$WebhookSubscriptions> webhookSubscriptions({
    required int first,
    String? after,
  });

  /// 📄 Get a single webhook subscription by ID
  Future<Query$WebhookSubscription> webhookSubscription({
    required String id,
  });

  /// ✨ Create a new webhook subscription
  Future<Map<String, dynamic>> webhookSubscriptionCreate({
    required Map<String, dynamic> input,
  });

  /// ✏️ Update an existing webhook subscription
  Future<Map<String, dynamic>> webhookSubscriptionUpdate({
    required Map<String, dynamic> input,
  });

  /// 🗑️ Delete a webhook subscription
  Future<Map<String, dynamic>> webhookSubscriptionDelete({
    required Map<String, dynamic> input,
  });
}
