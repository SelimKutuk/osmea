import 'package:apis/network/remote/shopify/graphql/webhooks/abstract/webhooks_service.dart';
import 'package:apis/network/remote/shopify/graphql/webhooks/graphql_models/queries/webhook_subscriptions_count.graphql.dart';
import 'package:apis/network/remote/shopify/graphql/webhooks/graphql_models/queries/webhook_subscriptions.graphql.dart';
import 'package:apis/network/remote/shopify/graphql/webhooks/graphql_models/queries/webhook_subscription.graphql.dart';
import 'package:apis/network/remote/shopify/graphql/webhooks/graphql_models/mutations/create_webhook_subscription.graphql.dart';
import 'package:apis/network/remote/shopify/graphql/services/base_graphql_service.dart';
import 'package:apis/network/remote/shopify/graphql/annotations/graphql_annotations.dart';
import 'package:injectable/injectable.dart';

/// 🔗 Concrete Webhooks GraphQL Service Implementation
///
/// Implements the core webhook operations using the enhanced base GraphQL service.
/// Uses codegen-generated types for type safety and annotation-based execution.
@Injectable(as: WebhooksGraphQLService)
class ApiWebhooksService extends BaseGraphQLService
    implements WebhooksGraphQLService {
  ApiWebhooksService(super.graphqlClient);

  @override
  @GraphQLQuery()
  Future<Query$WebhookSubscriptionsCount> webhookSubscriptionsCount({
    String? query,
  }) async {
    final result = await executeQueryAuto(
      documentNode: documentNodeQueryWebhookSubscriptionsCount,
      parameters: {'query': query ?? ''},
    );

    return Query$WebhookSubscriptionsCount.fromJson(result);
  }

  @override
  @GraphQLQuery()
  Future<Query$WebhookSubscriptions> webhookSubscriptions({
    required int first,
    String? after,
  }) async {
    final result = await executeQueryAuto(
      documentNode: documentNodeQueryWebhookSubscriptions,
      parameters: {'first': first, 'after': after},
    );

    return Query$WebhookSubscriptions.fromJson(result);
  }

  @override
  @GraphQLQuery()
  Future<Query$WebhookSubscription> webhookSubscription({
    required String id,
  }) async {
    final result = await executeQueryAuto(
      documentNode: documentNodeQueryWebhookSubscription,
      parameters: {'id': id},
    );

    return Query$WebhookSubscription.fromJson(result);
  }

  @override
  @GraphQLMutation()
  Future<Mutation$WebhookSubscriptionCreate> webhookSubscriptionCreate({
    required Variables$Mutation$WebhookSubscriptionCreate input,
  }) async {
    final result = await executeMutationAuto(
      documentNode: documentNodeMutationWebhookSubscriptionCreate,
      parameters: {'input': input},
    );

    return Mutation$WebhookSubscriptionCreate.fromJson(result);
  }
}
