import 'package:flutter/cupertino.dart';
import 'package:graphql/client.dart';

class GraphQlConfig {
  static HttpLink httplink = HttpLink(
      'https://pure-pegasus-86.hasura.app/v1/graphql',
      defaultHeaders: {
        "content-type": "application/json",
        "x-hasura-admin-secret":
            "4eYs75ZZlzAhDQJeEt1REoTHgmO54psurpKb014RMU4DaGCZLO0faWXYS5d6w1ef"
      });

  ValueNotifier<GraphQLClient> graphqlClient =
      ValueNotifier(GraphQLClient(link: httplink, cache: GraphQLCache()));

  GraphQLClient clientToQuery() {
    return GraphQLClient(
      cache: GraphQLCache(store: InMemoryStore()),
      //OptimisticCache(dataIdFromObject: typenameDataIdFromObject),
      link: httplink,
    );
  }
}
