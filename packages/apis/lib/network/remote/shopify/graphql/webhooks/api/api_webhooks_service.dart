import 'package:apis/network/remote/shopify/graphql/webhooks/abstract/webhooks_service.dart';
import 'package:apis/network/remote/shopify/graphql/webhooks/graphql_models/queries/webhook_subscriptions_count.graphql.dart';
import 'package:apis/network/remote/shopify/graphql/webhooks/graphql_models/queries/webhook_subscriptions.graphql.dart';
import 'package:apis/network/remote/shopify/graphql/webhooks/graphql_models/queries/webhook_subscription.graphql.dart';
import 'package:apis/network/remote/shopify/graphql/webhooks/graphql_models/mutations/create_webhook_subscription.graphql.dart';
import 'package:apis/network/remote/shopify/graphql/services/base_graphql_service.dart';
import 'package:injectable/injectable.dart';

/// 🔗 Concrete Webhooks GraphQL Service Implementation
///
/// Implements the core webhook operations using the base GraphQL service.
/// Uses codegen-generated types for type safety.
@Injectable(as: WebhooksGraphQLService)
class ApiWebhooksService extends BaseGraphQLService
    implements WebhooksGraphQLService {
  ApiWebhooksService(super.graphqlClient);

  @override
  Future<Query$WebhookSubscriptionsCount> webhookSubscriptionsCount({
    String? query,
  }) async {
    try {
      // Execute the GraphQL query using the base service
      final result = await this.queryWithDocument(
        documentNode: documentNodeQueryWebhookSubscriptionsCount,
        variables: {
          'query': query ?? '',
        },
      );

      // Check for GraphQL errors
      if (result.containsKey('errors')) {
        final errors = result['errors'] as List;
        final errorMessage = errors.isNotEmpty
            ? errors.first['message'] ?? 'GraphQL error occurred'
            : 'GraphQL error occurred';
        throw Exception('GraphQL Error: $errorMessage');
      }

      return Query$WebhookSubscriptionsCount.fromJson(result['data']);
    } catch (e) {
      throw Exception('Error getting webhook subscriptions count: $e');
    }
  }

  @override
  Future<Query$WebhookSubscriptions> webhookSubscriptions({
    required int first,
    String? after,
  }) async {
    try {
      // Execute the GraphQL query using the base service
      final result = await this.queryWithDocument(
        documentNode: documentNodeQueryWebhookSubscriptions,
        variables: {
          'first': first,
          if (after != null) 'after': after,
        },
      );

      // Check for GraphQL errors
      if (result.containsKey('errors')) {
        final errors = result['errors'] as List;
        final errorMessage = errors.isNotEmpty
            ? errors.first['message'] ?? 'GraphQL error occurred'
            : 'GraphQL error occurred';
        throw Exception('GraphQL Error: $errorMessage');
      }

      return Query$WebhookSubscriptions.fromJson(result['data']);
    } catch (e) {
      throw Exception('Error getting webhook subscriptions: $e');
    }
  }

  @override
  Future<Query$WebhookSubscription> webhookSubscription({
    required String id,
  }) async {
    try {
      // Execute the GraphQL query using the base service
      final result = await this.queryWithDocument(
        documentNode: documentNodeQueryWebhookSubscription,
        variables: {
          'id': id,
        },
      );

      // Check for GraphQL errors
      if (result.containsKey('errors')) {
        final errors = result['errors'] as List;
        final errorMessage = errors.isNotEmpty
            ? errors.first['message'] ?? 'GraphQL error occurred'
            : 'GraphQL error occurred';
        throw Exception('GraphQL Error: $errorMessage');
      }

      return Query$WebhookSubscription.fromJson(result['data']);
    } catch (e) {
      throw Exception('Error getting webhook subscription: $e');
    }
  }

  @override
  Future<Mutation$webhookSubscriptionCreate> webhookSubscriptionCreate({
    required Variables$Mutation$webhookSubscriptionCreate input,
  }) async {
    try {
      // Execute the GraphQL mutation using the base service
      final result = await this.mutateWithDocument(
        documentNode: documentNodeMutationwebhookSubscriptionCreate,
        variables: input.toJson(),
      );

      // Debug: Log the response
      print('Create Webhook Subscription Response: $result');
      print('Create Webhook Subscription Response Data: ${result['data']}');

      // Check for GraphQL errors
      if (result.containsKey('errors')) {
        final errors = result['errors'] as List;
        final errorMessage = errors.isNotEmpty
            ? errors.first['message'] ?? 'GraphQL error occurred'
            : 'GraphQL error occurred';
        throw Exception('GraphQL Error: $errorMessage');
      }

      if (result['data'] == null) {
        throw Exception('GraphQL response data is null: $result');
      }

      try {
        return Mutation$webhookSubscriptionCreate.fromJson(
            result['data'] as Map<String, dynamic>);
      } catch (e, stackTrace) {
        print('Error parsing Mutation\$webhookSubscriptionCreate: $e');
        print('Stack trace: $stackTrace');
        print('Data being parsed: ${result['data']}');
        rethrow;
      }
    } catch (e) {
      throw Exception('Error creating webhook subscription: $e');
    }
  }
}
