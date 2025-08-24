/// 🚀 GraphQL Annotation Wrappers
///
/// These annotations are designed for use in GraphQL services.
/// They work similarly to @GET, @POST, @Path, @Body annotations in REST APIs.

/// 🔍 GraphQL Query Annotation
///
/// Methods marked with this annotation are automatically executed as GraphQL queries.
/// Uses a distinct name to avoid conflicts with Retrofit's @Query annotation.
///
/// Usage:
/// ```dart
/// @GraphQLQuery()
/// Future<Query$WebhookSubscriptions> webhookSubscriptions({
///   required int first,
///   String? after,
/// });
/// ```
class GraphQLQuery {
  const GraphQLQuery();
}

/// ✏️ GraphQL Mutation Annotation
///
/// Methods marked with this annotation are automatically executed as GraphQL mutations.
/// Uses a distinct name to avoid conflicts with Retrofit's @Mutation annotation.
///
/// Usage:
/// ```dart
/// @GraphQLMutation()
/// Future<Mutation$CreateWebhook> createWebhook({
///   required Variables$Mutation$CreateWebhook input,
/// });
/// ```
class GraphQLMutation {
  const GraphQLMutation();
}

/// 📡 GraphQL Subscription Annotation
///
/// Methods marked with this annotation are automatically executed as GraphQL subscriptions.
/// Similar to WebSocket streams in REST APIs.
///
/// Usage:
/// ```dart
/// @GraphQLSubscription()
/// Stream<Subscription$WebhookUpdated> webhookUpdated({
///   required String webhookId,
/// });
/// ```
class GraphQLSubscription {
  const GraphQLSubscription();
}

/// 🔧 GraphQL Variable Annotation (Optional)
///
/// Marks a parameter as a GraphQL variable with custom name.
/// Only use when you need to override the default parameter name.
///
/// Usage:
/// ```dart
/// @GraphQLQuery()
/// Future<Query$Products> getProducts({
///   @GraphQLVariable('searchQuery') String? query, // Maps 'query' param to 'searchQuery' variable
/// });
/// ```
class GraphQLVariable {
  final String name;
  const GraphQLVariable(this.name);
}
