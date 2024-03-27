import 'dart:async';
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;

class Query$GetData {
  Query$GetData({
    required this.Graph_ql,
    this.$__typename = 'query_root',
  });

  factory Query$GetData.fromJson(Map<String, dynamic> json) {
    final l$Graph_ql = json['Graph_ql'];
    final l$$__typename = json['__typename'];
    return Query$GetData(
      Graph_ql: (l$Graph_ql as List<dynamic>)
          .map((e) =>
              Query$GetData$Graph_ql.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$GetData$Graph_ql> Graph_ql;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$Graph_ql = Graph_ql;
    _resultData['Graph_ql'] = l$Graph_ql.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$Graph_ql = Graph_ql;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$Graph_ql.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetData) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$Graph_ql = Graph_ql;
    final lOther$Graph_ql = other.Graph_ql;
    if (l$Graph_ql.length != lOther$Graph_ql.length) {
      return false;
    }
    for (int i = 0; i < l$Graph_ql.length; i++) {
      final l$Graph_ql$entry = l$Graph_ql[i];
      final lOther$Graph_ql$entry = lOther$Graph_ql[i];
      if (l$Graph_ql$entry != lOther$Graph_ql$entry) {
        return false;
      }
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetData on Query$GetData {
  CopyWith$Query$GetData<Query$GetData> get copyWith => CopyWith$Query$GetData(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetData<TRes> {
  factory CopyWith$Query$GetData(
    Query$GetData instance,
    TRes Function(Query$GetData) then,
  ) = _CopyWithImpl$Query$GetData;

  factory CopyWith$Query$GetData.stub(TRes res) =
      _CopyWithStubImpl$Query$GetData;

  TRes call({
    List<Query$GetData$Graph_ql>? Graph_ql,
    String? $__typename,
  });
  TRes Graph_ql(
      Iterable<Query$GetData$Graph_ql> Function(
              Iterable<CopyWith$Query$GetData$Graph_ql<Query$GetData$Graph_ql>>)
          _fn);
}

class _CopyWithImpl$Query$GetData<TRes>
    implements CopyWith$Query$GetData<TRes> {
  _CopyWithImpl$Query$GetData(
    this._instance,
    this._then,
  );

  final Query$GetData _instance;

  final TRes Function(Query$GetData) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? Graph_ql = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetData(
        Graph_ql: Graph_ql == _undefined || Graph_ql == null
            ? _instance.Graph_ql
            : (Graph_ql as List<Query$GetData$Graph_ql>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes Graph_ql(
          Iterable<Query$GetData$Graph_ql> Function(
                  Iterable<
                      CopyWith$Query$GetData$Graph_ql<Query$GetData$Graph_ql>>)
              _fn) =>
      call(
          Graph_ql:
              _fn(_instance.Graph_ql.map((e) => CopyWith$Query$GetData$Graph_ql(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$GetData<TRes>
    implements CopyWith$Query$GetData<TRes> {
  _CopyWithStubImpl$Query$GetData(this._res);

  TRes _res;

  call({
    List<Query$GetData$Graph_ql>? Graph_ql,
    String? $__typename,
  }) =>
      _res;

  Graph_ql(_fn) => _res;
}

const documentNodeQueryGetData = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetData'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'Graph_ql'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'id'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'name'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);
Query$GetData _parserFn$Query$GetData(Map<String, dynamic> data) =>
    Query$GetData.fromJson(data);
typedef OnQueryComplete$Query$GetData = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$GetData?,
);

class Options$Query$GetData extends graphql.QueryOptions<Query$GetData> {
  Options$Query$GetData({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetData? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$GetData? onComplete,
    graphql.OnQueryError? onError,
  })  : onCompleteWithParsed = onComplete,
        super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          pollInterval: pollInterval,
          context: context,
          onComplete: onComplete == null
              ? null
              : (data) => onComplete(
                    data,
                    data == null ? null : _parserFn$Query$GetData(data),
                  ),
          onError: onError,
          document: documentNodeQueryGetData,
          parserFn: _parserFn$Query$GetData,
        );

  final OnQueryComplete$Query$GetData? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$GetData
    extends graphql.WatchQueryOptions<Query$GetData> {
  WatchOptions$Query$GetData({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetData? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeQueryGetData,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$GetData,
        );
}

class FetchMoreOptions$Query$GetData extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$GetData({required graphql.UpdateQuery updateQuery})
      : super(
          updateQuery: updateQuery,
          document: documentNodeQueryGetData,
        );
}

extension ClientExtension$Query$GetData on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$GetData>> query$GetData(
          [Options$Query$GetData? options]) async =>
      await this.query(options ?? Options$Query$GetData());
  graphql.ObservableQuery<Query$GetData> watchQuery$GetData(
          [WatchOptions$Query$GetData? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$GetData());
  void writeQuery$GetData({
    required Query$GetData data,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
            operation: graphql.Operation(document: documentNodeQueryGetData)),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$GetData? readQuery$GetData({bool optimistic = true}) {
    final result = this.readQuery(
      graphql.Request(
          operation: graphql.Operation(document: documentNodeQueryGetData)),
      optimistic: optimistic,
    );
    return result == null ? null : Query$GetData.fromJson(result);
  }
}

class Query$GetData$Graph_ql {
  Query$GetData$Graph_ql({
    required this.id,
    required this.name,
    this.$__typename = 'Graph_ql',
  });

  factory Query$GetData$Graph_ql.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Query$GetData$Graph_ql(
      id: (l$id as int),
      name: (l$name as String),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final String name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetData$Graph_ql) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetData$Graph_ql on Query$GetData$Graph_ql {
  CopyWith$Query$GetData$Graph_ql<Query$GetData$Graph_ql> get copyWith =>
      CopyWith$Query$GetData$Graph_ql(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetData$Graph_ql<TRes> {
  factory CopyWith$Query$GetData$Graph_ql(
    Query$GetData$Graph_ql instance,
    TRes Function(Query$GetData$Graph_ql) then,
  ) = _CopyWithImpl$Query$GetData$Graph_ql;

  factory CopyWith$Query$GetData$Graph_ql.stub(TRes res) =
      _CopyWithStubImpl$Query$GetData$Graph_ql;

  TRes call({
    int? id,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetData$Graph_ql<TRes>
    implements CopyWith$Query$GetData$Graph_ql<TRes> {
  _CopyWithImpl$Query$GetData$Graph_ql(
    this._instance,
    this._then,
  );

  final Query$GetData$Graph_ql _instance;

  final TRes Function(Query$GetData$Graph_ql) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetData$Graph_ql(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetData$Graph_ql<TRes>
    implements CopyWith$Query$GetData$Graph_ql<TRes> {
  _CopyWithStubImpl$Query$GetData$Graph_ql(this._res);

  TRes _res;

  call({
    int? id,
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Mutation$InsertData {
  factory Variables$Mutation$InsertData({
    int? id,
    String? name,
  }) =>
      Variables$Mutation$InsertData._({
        if (id != null) r'id': id,
        if (name != null) r'name': name,
      });

  Variables$Mutation$InsertData._(this._$data);

  factory Variables$Mutation$InsertData.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = (l$id as int?);
    }
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = (l$name as String?);
    }
    return Variables$Mutation$InsertData._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get id => (_$data['id'] as int?);

  String? get name => (_$data['name'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id;
    }
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name;
    }
    return result$data;
  }

  CopyWith$Variables$Mutation$InsertData<Variables$Mutation$InsertData>
      get copyWith => CopyWith$Variables$Mutation$InsertData(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$InsertData) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (_$data.containsKey('name') != other._$data.containsKey('name')) {
      return false;
    }
    if (l$name != lOther$name) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    return Object.hashAll([
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('name') ? l$name : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$InsertData<TRes> {
  factory CopyWith$Variables$Mutation$InsertData(
    Variables$Mutation$InsertData instance,
    TRes Function(Variables$Mutation$InsertData) then,
  ) = _CopyWithImpl$Variables$Mutation$InsertData;

  factory CopyWith$Variables$Mutation$InsertData.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$InsertData;

  TRes call({
    int? id,
    String? name,
  });
}

class _CopyWithImpl$Variables$Mutation$InsertData<TRes>
    implements CopyWith$Variables$Mutation$InsertData<TRes> {
  _CopyWithImpl$Variables$Mutation$InsertData(
    this._instance,
    this._then,
  );

  final Variables$Mutation$InsertData _instance;

  final TRes Function(Variables$Mutation$InsertData) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
  }) =>
      _then(Variables$Mutation$InsertData._({
        ..._instance._$data,
        if (id != _undefined) 'id': (id as int?),
        if (name != _undefined) 'name': (name as String?),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$InsertData<TRes>
    implements CopyWith$Variables$Mutation$InsertData<TRes> {
  _CopyWithStubImpl$Variables$Mutation$InsertData(this._res);

  TRes _res;

  call({
    int? id,
    String? name,
  }) =>
      _res;
}

class Mutation$InsertData {
  Mutation$InsertData({
    this.insert_Graph_ql_one,
    this.$__typename = 'mutation_root',
  });

  factory Mutation$InsertData.fromJson(Map<String, dynamic> json) {
    final l$insert_Graph_ql_one = json['insert_Graph_ql_one'];
    final l$$__typename = json['__typename'];
    return Mutation$InsertData(
      insert_Graph_ql_one: l$insert_Graph_ql_one == null
          ? null
          : Mutation$InsertData$insert_Graph_ql_one.fromJson(
              (l$insert_Graph_ql_one as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$InsertData$insert_Graph_ql_one? insert_Graph_ql_one;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$insert_Graph_ql_one = insert_Graph_ql_one;
    _resultData['insert_Graph_ql_one'] = l$insert_Graph_ql_one?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$insert_Graph_ql_one = insert_Graph_ql_one;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$insert_Graph_ql_one,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$InsertData) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$insert_Graph_ql_one = insert_Graph_ql_one;
    final lOther$insert_Graph_ql_one = other.insert_Graph_ql_one;
    if (l$insert_Graph_ql_one != lOther$insert_Graph_ql_one) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$InsertData on Mutation$InsertData {
  CopyWith$Mutation$InsertData<Mutation$InsertData> get copyWith =>
      CopyWith$Mutation$InsertData(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$InsertData<TRes> {
  factory CopyWith$Mutation$InsertData(
    Mutation$InsertData instance,
    TRes Function(Mutation$InsertData) then,
  ) = _CopyWithImpl$Mutation$InsertData;

  factory CopyWith$Mutation$InsertData.stub(TRes res) =
      _CopyWithStubImpl$Mutation$InsertData;

  TRes call({
    Mutation$InsertData$insert_Graph_ql_one? insert_Graph_ql_one,
    String? $__typename,
  });
  CopyWith$Mutation$InsertData$insert_Graph_ql_one<TRes>
      get insert_Graph_ql_one;
}

class _CopyWithImpl$Mutation$InsertData<TRes>
    implements CopyWith$Mutation$InsertData<TRes> {
  _CopyWithImpl$Mutation$InsertData(
    this._instance,
    this._then,
  );

  final Mutation$InsertData _instance;

  final TRes Function(Mutation$InsertData) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? insert_Graph_ql_one = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$InsertData(
        insert_Graph_ql_one: insert_Graph_ql_one == _undefined
            ? _instance.insert_Graph_ql_one
            : (insert_Graph_ql_one as Mutation$InsertData$insert_Graph_ql_one?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$InsertData$insert_Graph_ql_one<TRes>
      get insert_Graph_ql_one {
    final local$insert_Graph_ql_one = _instance.insert_Graph_ql_one;
    return local$insert_Graph_ql_one == null
        ? CopyWith$Mutation$InsertData$insert_Graph_ql_one.stub(
            _then(_instance))
        : CopyWith$Mutation$InsertData$insert_Graph_ql_one(
            local$insert_Graph_ql_one, (e) => call(insert_Graph_ql_one: e));
  }
}

class _CopyWithStubImpl$Mutation$InsertData<TRes>
    implements CopyWith$Mutation$InsertData<TRes> {
  _CopyWithStubImpl$Mutation$InsertData(this._res);

  TRes _res;

  call({
    Mutation$InsertData$insert_Graph_ql_one? insert_Graph_ql_one,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$InsertData$insert_Graph_ql_one<TRes>
      get insert_Graph_ql_one =>
          CopyWith$Mutation$InsertData$insert_Graph_ql_one.stub(_res);
}

const documentNodeMutationInsertData = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'InsertData'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'id')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'name')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'insert_Graph_ql_one'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'object'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: 'id'),
                value: VariableNode(name: NameNode(value: 'id')),
              ),
              ObjectFieldNode(
                name: NameNode(value: 'name'),
                value: VariableNode(name: NameNode(value: 'name')),
              ),
            ]),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'name'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'id'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);
Mutation$InsertData _parserFn$Mutation$InsertData(Map<String, dynamic> data) =>
    Mutation$InsertData.fromJson(data);
typedef OnMutationCompleted$Mutation$InsertData = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$InsertData?,
);

class Options$Mutation$InsertData
    extends graphql.MutationOptions<Mutation$InsertData> {
  Options$Mutation$InsertData({
    String? operationName,
    Variables$Mutation$InsertData? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$InsertData? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$InsertData? onCompleted,
    graphql.OnMutationUpdate<Mutation$InsertData>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          variables: variables?.toJson() ?? {},
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null ? null : _parserFn$Mutation$InsertData(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationInsertData,
          parserFn: _parserFn$Mutation$InsertData,
        );

  final OnMutationCompleted$Mutation$InsertData? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$InsertData
    extends graphql.WatchQueryOptions<Mutation$InsertData> {
  WatchOptions$Mutation$InsertData({
    String? operationName,
    Variables$Mutation$InsertData? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$InsertData? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables?.toJson() ?? {},
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeMutationInsertData,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$InsertData,
        );
}

extension ClientExtension$Mutation$InsertData on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$InsertData>> mutate$InsertData(
          [Options$Mutation$InsertData? options]) async =>
      await this.mutate(options ?? Options$Mutation$InsertData());
  graphql.ObservableQuery<Mutation$InsertData> watchMutation$InsertData(
          [WatchOptions$Mutation$InsertData? options]) =>
      this.watchMutation(options ?? WatchOptions$Mutation$InsertData());
}

class Mutation$InsertData$insert_Graph_ql_one {
  Mutation$InsertData$insert_Graph_ql_one({
    required this.name,
    required this.id,
    this.$__typename = 'Graph_ql',
  });

  factory Mutation$InsertData$insert_Graph_ql_one.fromJson(
      Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Mutation$InsertData$insert_Graph_ql_one(
      name: (l$name as String),
      id: (l$id as int),
      $__typename: (l$$__typename as String),
    );
  }

  final String name;

  final int id;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$id = id;
    _resultData['id'] = l$id;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$id = id;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$name,
      l$id,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$InsertData$insert_Graph_ql_one) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$InsertData$insert_Graph_ql_one
    on Mutation$InsertData$insert_Graph_ql_one {
  CopyWith$Mutation$InsertData$insert_Graph_ql_one<
          Mutation$InsertData$insert_Graph_ql_one>
      get copyWith => CopyWith$Mutation$InsertData$insert_Graph_ql_one(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$InsertData$insert_Graph_ql_one<TRes> {
  factory CopyWith$Mutation$InsertData$insert_Graph_ql_one(
    Mutation$InsertData$insert_Graph_ql_one instance,
    TRes Function(Mutation$InsertData$insert_Graph_ql_one) then,
  ) = _CopyWithImpl$Mutation$InsertData$insert_Graph_ql_one;

  factory CopyWith$Mutation$InsertData$insert_Graph_ql_one.stub(TRes res) =
      _CopyWithStubImpl$Mutation$InsertData$insert_Graph_ql_one;

  TRes call({
    String? name,
    int? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$InsertData$insert_Graph_ql_one<TRes>
    implements CopyWith$Mutation$InsertData$insert_Graph_ql_one<TRes> {
  _CopyWithImpl$Mutation$InsertData$insert_Graph_ql_one(
    this._instance,
    this._then,
  );

  final Mutation$InsertData$insert_Graph_ql_one _instance;

  final TRes Function(Mutation$InsertData$insert_Graph_ql_one) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$InsertData$insert_Graph_ql_one(
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        id: id == _undefined || id == null ? _instance.id : (id as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$InsertData$insert_Graph_ql_one<TRes>
    implements CopyWith$Mutation$InsertData$insert_Graph_ql_one<TRes> {
  _CopyWithStubImpl$Mutation$InsertData$insert_Graph_ql_one(this._res);

  TRes _res;

  call({
    String? name,
    int? id,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Mutation$DeleteData {
  factory Variables$Mutation$DeleteData({int? id}) =>
      Variables$Mutation$DeleteData._({
        if (id != null) r'id': id,
      });

  Variables$Mutation$DeleteData._(this._$data);

  factory Variables$Mutation$DeleteData.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = (l$id as int?);
    }
    return Variables$Mutation$DeleteData._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get id => (_$data['id'] as int?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id;
    }
    return result$data;
  }

  CopyWith$Variables$Mutation$DeleteData<Variables$Mutation$DeleteData>
      get copyWith => CopyWith$Variables$Mutation$DeleteData(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$DeleteData) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    return Object.hashAll([_$data.containsKey('id') ? l$id : const {}]);
  }
}

abstract class CopyWith$Variables$Mutation$DeleteData<TRes> {
  factory CopyWith$Variables$Mutation$DeleteData(
    Variables$Mutation$DeleteData instance,
    TRes Function(Variables$Mutation$DeleteData) then,
  ) = _CopyWithImpl$Variables$Mutation$DeleteData;

  factory CopyWith$Variables$Mutation$DeleteData.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$DeleteData;

  TRes call({int? id});
}

class _CopyWithImpl$Variables$Mutation$DeleteData<TRes>
    implements CopyWith$Variables$Mutation$DeleteData<TRes> {
  _CopyWithImpl$Variables$Mutation$DeleteData(
    this._instance,
    this._then,
  );

  final Variables$Mutation$DeleteData _instance;

  final TRes Function(Variables$Mutation$DeleteData) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) =>
      _then(Variables$Mutation$DeleteData._({
        ..._instance._$data,
        if (id != _undefined) 'id': (id as int?),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$DeleteData<TRes>
    implements CopyWith$Variables$Mutation$DeleteData<TRes> {
  _CopyWithStubImpl$Variables$Mutation$DeleteData(this._res);

  TRes _res;

  call({int? id}) => _res;
}

class Mutation$DeleteData {
  Mutation$DeleteData({
    this.delete_Graph_ql,
    this.$__typename = 'mutation_root',
  });

  factory Mutation$DeleteData.fromJson(Map<String, dynamic> json) {
    final l$delete_Graph_ql = json['delete_Graph_ql'];
    final l$$__typename = json['__typename'];
    return Mutation$DeleteData(
      delete_Graph_ql: l$delete_Graph_ql == null
          ? null
          : Mutation$DeleteData$delete_Graph_ql.fromJson(
              (l$delete_Graph_ql as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$DeleteData$delete_Graph_ql? delete_Graph_ql;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$delete_Graph_ql = delete_Graph_ql;
    _resultData['delete_Graph_ql'] = l$delete_Graph_ql?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$delete_Graph_ql = delete_Graph_ql;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$delete_Graph_ql,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$DeleteData) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$delete_Graph_ql = delete_Graph_ql;
    final lOther$delete_Graph_ql = other.delete_Graph_ql;
    if (l$delete_Graph_ql != lOther$delete_Graph_ql) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$DeleteData on Mutation$DeleteData {
  CopyWith$Mutation$DeleteData<Mutation$DeleteData> get copyWith =>
      CopyWith$Mutation$DeleteData(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$DeleteData<TRes> {
  factory CopyWith$Mutation$DeleteData(
    Mutation$DeleteData instance,
    TRes Function(Mutation$DeleteData) then,
  ) = _CopyWithImpl$Mutation$DeleteData;

  factory CopyWith$Mutation$DeleteData.stub(TRes res) =
      _CopyWithStubImpl$Mutation$DeleteData;

  TRes call({
    Mutation$DeleteData$delete_Graph_ql? delete_Graph_ql,
    String? $__typename,
  });
  CopyWith$Mutation$DeleteData$delete_Graph_ql<TRes> get delete_Graph_ql;
}

class _CopyWithImpl$Mutation$DeleteData<TRes>
    implements CopyWith$Mutation$DeleteData<TRes> {
  _CopyWithImpl$Mutation$DeleteData(
    this._instance,
    this._then,
  );

  final Mutation$DeleteData _instance;

  final TRes Function(Mutation$DeleteData) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? delete_Graph_ql = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$DeleteData(
        delete_Graph_ql: delete_Graph_ql == _undefined
            ? _instance.delete_Graph_ql
            : (delete_Graph_ql as Mutation$DeleteData$delete_Graph_ql?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$DeleteData$delete_Graph_ql<TRes> get delete_Graph_ql {
    final local$delete_Graph_ql = _instance.delete_Graph_ql;
    return local$delete_Graph_ql == null
        ? CopyWith$Mutation$DeleteData$delete_Graph_ql.stub(_then(_instance))
        : CopyWith$Mutation$DeleteData$delete_Graph_ql(
            local$delete_Graph_ql, (e) => call(delete_Graph_ql: e));
  }
}

class _CopyWithStubImpl$Mutation$DeleteData<TRes>
    implements CopyWith$Mutation$DeleteData<TRes> {
  _CopyWithStubImpl$Mutation$DeleteData(this._res);

  TRes _res;

  call({
    Mutation$DeleteData$delete_Graph_ql? delete_Graph_ql,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$DeleteData$delete_Graph_ql<TRes> get delete_Graph_ql =>
      CopyWith$Mutation$DeleteData$delete_Graph_ql.stub(_res);
}

const documentNodeMutationDeleteData = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'DeleteData'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'id')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'delete_Graph_ql'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'where'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: 'id'),
                value: ObjectValueNode(fields: [
                  ObjectFieldNode(
                    name: NameNode(value: '_eq'),
                    value: VariableNode(name: NameNode(value: 'id')),
                  )
                ]),
              )
            ]),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'returning'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'id'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'name'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);
Mutation$DeleteData _parserFn$Mutation$DeleteData(Map<String, dynamic> data) =>
    Mutation$DeleteData.fromJson(data);
typedef OnMutationCompleted$Mutation$DeleteData = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$DeleteData?,
);

class Options$Mutation$DeleteData
    extends graphql.MutationOptions<Mutation$DeleteData> {
  Options$Mutation$DeleteData({
    String? operationName,
    Variables$Mutation$DeleteData? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$DeleteData? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$DeleteData? onCompleted,
    graphql.OnMutationUpdate<Mutation$DeleteData>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          variables: variables?.toJson() ?? {},
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null ? null : _parserFn$Mutation$DeleteData(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationDeleteData,
          parserFn: _parserFn$Mutation$DeleteData,
        );

  final OnMutationCompleted$Mutation$DeleteData? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$DeleteData
    extends graphql.WatchQueryOptions<Mutation$DeleteData> {
  WatchOptions$Mutation$DeleteData({
    String? operationName,
    Variables$Mutation$DeleteData? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$DeleteData? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables?.toJson() ?? {},
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeMutationDeleteData,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$DeleteData,
        );
}

extension ClientExtension$Mutation$DeleteData on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$DeleteData>> mutate$DeleteData(
          [Options$Mutation$DeleteData? options]) async =>
      await this.mutate(options ?? Options$Mutation$DeleteData());
  graphql.ObservableQuery<Mutation$DeleteData> watchMutation$DeleteData(
          [WatchOptions$Mutation$DeleteData? options]) =>
      this.watchMutation(options ?? WatchOptions$Mutation$DeleteData());
}

class Mutation$DeleteData$delete_Graph_ql {
  Mutation$DeleteData$delete_Graph_ql({
    required this.returning,
    this.$__typename = 'Graph_ql_mutation_response',
  });

  factory Mutation$DeleteData$delete_Graph_ql.fromJson(
      Map<String, dynamic> json) {
    final l$returning = json['returning'];
    final l$$__typename = json['__typename'];
    return Mutation$DeleteData$delete_Graph_ql(
      returning: (l$returning as List<dynamic>)
          .map((e) => Mutation$DeleteData$delete_Graph_ql$returning.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Mutation$DeleteData$delete_Graph_ql$returning> returning;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$returning = returning;
    _resultData['returning'] = l$returning.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$returning = returning;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$returning.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$DeleteData$delete_Graph_ql) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$returning = returning;
    final lOther$returning = other.returning;
    if (l$returning.length != lOther$returning.length) {
      return false;
    }
    for (int i = 0; i < l$returning.length; i++) {
      final l$returning$entry = l$returning[i];
      final lOther$returning$entry = lOther$returning[i];
      if (l$returning$entry != lOther$returning$entry) {
        return false;
      }
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$DeleteData$delete_Graph_ql
    on Mutation$DeleteData$delete_Graph_ql {
  CopyWith$Mutation$DeleteData$delete_Graph_ql<
          Mutation$DeleteData$delete_Graph_ql>
      get copyWith => CopyWith$Mutation$DeleteData$delete_Graph_ql(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$DeleteData$delete_Graph_ql<TRes> {
  factory CopyWith$Mutation$DeleteData$delete_Graph_ql(
    Mutation$DeleteData$delete_Graph_ql instance,
    TRes Function(Mutation$DeleteData$delete_Graph_ql) then,
  ) = _CopyWithImpl$Mutation$DeleteData$delete_Graph_ql;

  factory CopyWith$Mutation$DeleteData$delete_Graph_ql.stub(TRes res) =
      _CopyWithStubImpl$Mutation$DeleteData$delete_Graph_ql;

  TRes call({
    List<Mutation$DeleteData$delete_Graph_ql$returning>? returning,
    String? $__typename,
  });
  TRes returning(
      Iterable<Mutation$DeleteData$delete_Graph_ql$returning> Function(
              Iterable<
                  CopyWith$Mutation$DeleteData$delete_Graph_ql$returning<
                      Mutation$DeleteData$delete_Graph_ql$returning>>)
          _fn);
}

class _CopyWithImpl$Mutation$DeleteData$delete_Graph_ql<TRes>
    implements CopyWith$Mutation$DeleteData$delete_Graph_ql<TRes> {
  _CopyWithImpl$Mutation$DeleteData$delete_Graph_ql(
    this._instance,
    this._then,
  );

  final Mutation$DeleteData$delete_Graph_ql _instance;

  final TRes Function(Mutation$DeleteData$delete_Graph_ql) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? returning = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$DeleteData$delete_Graph_ql(
        returning: returning == _undefined || returning == null
            ? _instance.returning
            : (returning
                as List<Mutation$DeleteData$delete_Graph_ql$returning>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes returning(
          Iterable<Mutation$DeleteData$delete_Graph_ql$returning> Function(
                  Iterable<
                      CopyWith$Mutation$DeleteData$delete_Graph_ql$returning<
                          Mutation$DeleteData$delete_Graph_ql$returning>>)
              _fn) =>
      call(
          returning: _fn(_instance.returning.map(
              (e) => CopyWith$Mutation$DeleteData$delete_Graph_ql$returning(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Mutation$DeleteData$delete_Graph_ql<TRes>
    implements CopyWith$Mutation$DeleteData$delete_Graph_ql<TRes> {
  _CopyWithStubImpl$Mutation$DeleteData$delete_Graph_ql(this._res);

  TRes _res;

  call({
    List<Mutation$DeleteData$delete_Graph_ql$returning>? returning,
    String? $__typename,
  }) =>
      _res;

  returning(_fn) => _res;
}

class Mutation$DeleteData$delete_Graph_ql$returning {
  Mutation$DeleteData$delete_Graph_ql$returning({
    required this.id,
    required this.name,
    this.$__typename = 'Graph_ql',
  });

  factory Mutation$DeleteData$delete_Graph_ql$returning.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Mutation$DeleteData$delete_Graph_ql$returning(
      id: (l$id as int),
      name: (l$name as String),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final String name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$DeleteData$delete_Graph_ql$returning) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$DeleteData$delete_Graph_ql$returning
    on Mutation$DeleteData$delete_Graph_ql$returning {
  CopyWith$Mutation$DeleteData$delete_Graph_ql$returning<
          Mutation$DeleteData$delete_Graph_ql$returning>
      get copyWith => CopyWith$Mutation$DeleteData$delete_Graph_ql$returning(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$DeleteData$delete_Graph_ql$returning<TRes> {
  factory CopyWith$Mutation$DeleteData$delete_Graph_ql$returning(
    Mutation$DeleteData$delete_Graph_ql$returning instance,
    TRes Function(Mutation$DeleteData$delete_Graph_ql$returning) then,
  ) = _CopyWithImpl$Mutation$DeleteData$delete_Graph_ql$returning;

  factory CopyWith$Mutation$DeleteData$delete_Graph_ql$returning.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$DeleteData$delete_Graph_ql$returning;

  TRes call({
    int? id,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$DeleteData$delete_Graph_ql$returning<TRes>
    implements CopyWith$Mutation$DeleteData$delete_Graph_ql$returning<TRes> {
  _CopyWithImpl$Mutation$DeleteData$delete_Graph_ql$returning(
    this._instance,
    this._then,
  );

  final Mutation$DeleteData$delete_Graph_ql$returning _instance;

  final TRes Function(Mutation$DeleteData$delete_Graph_ql$returning) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$DeleteData$delete_Graph_ql$returning(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$DeleteData$delete_Graph_ql$returning<TRes>
    implements CopyWith$Mutation$DeleteData$delete_Graph_ql$returning<TRes> {
  _CopyWithStubImpl$Mutation$DeleteData$delete_Graph_ql$returning(this._res);

  TRes _res;

  call({
    int? id,
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Mutation$UpdateTable {
  factory Variables$Mutation$UpdateTable({int? id}) =>
      Variables$Mutation$UpdateTable._({
        if (id != null) r'id': id,
      });

  Variables$Mutation$UpdateTable._(this._$data);

  factory Variables$Mutation$UpdateTable.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = (l$id as int?);
    }
    return Variables$Mutation$UpdateTable._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get id => (_$data['id'] as int?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id;
    }
    return result$data;
  }

  CopyWith$Variables$Mutation$UpdateTable<Variables$Mutation$UpdateTable>
      get copyWith => CopyWith$Variables$Mutation$UpdateTable(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$UpdateTable) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    return Object.hashAll([_$data.containsKey('id') ? l$id : const {}]);
  }
}

abstract class CopyWith$Variables$Mutation$UpdateTable<TRes> {
  factory CopyWith$Variables$Mutation$UpdateTable(
    Variables$Mutation$UpdateTable instance,
    TRes Function(Variables$Mutation$UpdateTable) then,
  ) = _CopyWithImpl$Variables$Mutation$UpdateTable;

  factory CopyWith$Variables$Mutation$UpdateTable.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$UpdateTable;

  TRes call({int? id});
}

class _CopyWithImpl$Variables$Mutation$UpdateTable<TRes>
    implements CopyWith$Variables$Mutation$UpdateTable<TRes> {
  _CopyWithImpl$Variables$Mutation$UpdateTable(
    this._instance,
    this._then,
  );

  final Variables$Mutation$UpdateTable _instance;

  final TRes Function(Variables$Mutation$UpdateTable) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) =>
      _then(Variables$Mutation$UpdateTable._({
        ..._instance._$data,
        if (id != _undefined) 'id': (id as int?),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$UpdateTable<TRes>
    implements CopyWith$Variables$Mutation$UpdateTable<TRes> {
  _CopyWithStubImpl$Variables$Mutation$UpdateTable(this._res);

  TRes _res;

  call({int? id}) => _res;
}

class Mutation$UpdateTable {
  Mutation$UpdateTable({
    this.update_Graph_ql,
    this.$__typename = 'mutation_root',
  });

  factory Mutation$UpdateTable.fromJson(Map<String, dynamic> json) {
    final l$update_Graph_ql = json['update_Graph_ql'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateTable(
      update_Graph_ql: l$update_Graph_ql == null
          ? null
          : Mutation$UpdateTable$update_Graph_ql.fromJson(
              (l$update_Graph_ql as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$UpdateTable$update_Graph_ql? update_Graph_ql;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$update_Graph_ql = update_Graph_ql;
    _resultData['update_Graph_ql'] = l$update_Graph_ql?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$update_Graph_ql = update_Graph_ql;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$update_Graph_ql,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$UpdateTable) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$update_Graph_ql = update_Graph_ql;
    final lOther$update_Graph_ql = other.update_Graph_ql;
    if (l$update_Graph_ql != lOther$update_Graph_ql) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$UpdateTable on Mutation$UpdateTable {
  CopyWith$Mutation$UpdateTable<Mutation$UpdateTable> get copyWith =>
      CopyWith$Mutation$UpdateTable(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$UpdateTable<TRes> {
  factory CopyWith$Mutation$UpdateTable(
    Mutation$UpdateTable instance,
    TRes Function(Mutation$UpdateTable) then,
  ) = _CopyWithImpl$Mutation$UpdateTable;

  factory CopyWith$Mutation$UpdateTable.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UpdateTable;

  TRes call({
    Mutation$UpdateTable$update_Graph_ql? update_Graph_ql,
    String? $__typename,
  });
  CopyWith$Mutation$UpdateTable$update_Graph_ql<TRes> get update_Graph_ql;
}

class _CopyWithImpl$Mutation$UpdateTable<TRes>
    implements CopyWith$Mutation$UpdateTable<TRes> {
  _CopyWithImpl$Mutation$UpdateTable(
    this._instance,
    this._then,
  );

  final Mutation$UpdateTable _instance;

  final TRes Function(Mutation$UpdateTable) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? update_Graph_ql = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$UpdateTable(
        update_Graph_ql: update_Graph_ql == _undefined
            ? _instance.update_Graph_ql
            : (update_Graph_ql as Mutation$UpdateTable$update_Graph_ql?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$UpdateTable$update_Graph_ql<TRes> get update_Graph_ql {
    final local$update_Graph_ql = _instance.update_Graph_ql;
    return local$update_Graph_ql == null
        ? CopyWith$Mutation$UpdateTable$update_Graph_ql.stub(_then(_instance))
        : CopyWith$Mutation$UpdateTable$update_Graph_ql(
            local$update_Graph_ql, (e) => call(update_Graph_ql: e));
  }
}

class _CopyWithStubImpl$Mutation$UpdateTable<TRes>
    implements CopyWith$Mutation$UpdateTable<TRes> {
  _CopyWithStubImpl$Mutation$UpdateTable(this._res);

  TRes _res;

  call({
    Mutation$UpdateTable$update_Graph_ql? update_Graph_ql,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$UpdateTable$update_Graph_ql<TRes> get update_Graph_ql =>
      CopyWith$Mutation$UpdateTable$update_Graph_ql.stub(_res);
}

const documentNodeMutationUpdateTable = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'UpdateTable'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'id')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'update_Graph_ql'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'where'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: 'id'),
                value: ObjectValueNode(fields: [
                  ObjectFieldNode(
                    name: NameNode(value: '_eq'),
                    value: VariableNode(name: NameNode(value: 'id')),
                  )
                ]),
              )
            ]),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'returning'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'id'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'name'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);
Mutation$UpdateTable _parserFn$Mutation$UpdateTable(
        Map<String, dynamic> data) =>
    Mutation$UpdateTable.fromJson(data);
typedef OnMutationCompleted$Mutation$UpdateTable = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$UpdateTable?,
);

class Options$Mutation$UpdateTable
    extends graphql.MutationOptions<Mutation$UpdateTable> {
  Options$Mutation$UpdateTable({
    String? operationName,
    Variables$Mutation$UpdateTable? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$UpdateTable? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$UpdateTable? onCompleted,
    graphql.OnMutationUpdate<Mutation$UpdateTable>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          variables: variables?.toJson() ?? {},
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null ? null : _parserFn$Mutation$UpdateTable(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationUpdateTable,
          parserFn: _parserFn$Mutation$UpdateTable,
        );

  final OnMutationCompleted$Mutation$UpdateTable? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$UpdateTable
    extends graphql.WatchQueryOptions<Mutation$UpdateTable> {
  WatchOptions$Mutation$UpdateTable({
    String? operationName,
    Variables$Mutation$UpdateTable? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$UpdateTable? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables?.toJson() ?? {},
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeMutationUpdateTable,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$UpdateTable,
        );
}

extension ClientExtension$Mutation$UpdateTable on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$UpdateTable>> mutate$UpdateTable(
          [Options$Mutation$UpdateTable? options]) async =>
      await this.mutate(options ?? Options$Mutation$UpdateTable());
  graphql.ObservableQuery<Mutation$UpdateTable> watchMutation$UpdateTable(
          [WatchOptions$Mutation$UpdateTable? options]) =>
      this.watchMutation(options ?? WatchOptions$Mutation$UpdateTable());
}

class Mutation$UpdateTable$update_Graph_ql {
  Mutation$UpdateTable$update_Graph_ql({
    required this.returning,
    this.$__typename = 'Graph_ql_mutation_response',
  });

  factory Mutation$UpdateTable$update_Graph_ql.fromJson(
      Map<String, dynamic> json) {
    final l$returning = json['returning'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateTable$update_Graph_ql(
      returning: (l$returning as List<dynamic>)
          .map((e) => Mutation$UpdateTable$update_Graph_ql$returning.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Mutation$UpdateTable$update_Graph_ql$returning> returning;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$returning = returning;
    _resultData['returning'] = l$returning.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$returning = returning;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$returning.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$UpdateTable$update_Graph_ql) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$returning = returning;
    final lOther$returning = other.returning;
    if (l$returning.length != lOther$returning.length) {
      return false;
    }
    for (int i = 0; i < l$returning.length; i++) {
      final l$returning$entry = l$returning[i];
      final lOther$returning$entry = lOther$returning[i];
      if (l$returning$entry != lOther$returning$entry) {
        return false;
      }
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$UpdateTable$update_Graph_ql
    on Mutation$UpdateTable$update_Graph_ql {
  CopyWith$Mutation$UpdateTable$update_Graph_ql<
          Mutation$UpdateTable$update_Graph_ql>
      get copyWith => CopyWith$Mutation$UpdateTable$update_Graph_ql(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$UpdateTable$update_Graph_ql<TRes> {
  factory CopyWith$Mutation$UpdateTable$update_Graph_ql(
    Mutation$UpdateTable$update_Graph_ql instance,
    TRes Function(Mutation$UpdateTable$update_Graph_ql) then,
  ) = _CopyWithImpl$Mutation$UpdateTable$update_Graph_ql;

  factory CopyWith$Mutation$UpdateTable$update_Graph_ql.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UpdateTable$update_Graph_ql;

  TRes call({
    List<Mutation$UpdateTable$update_Graph_ql$returning>? returning,
    String? $__typename,
  });
  TRes returning(
      Iterable<Mutation$UpdateTable$update_Graph_ql$returning> Function(
              Iterable<
                  CopyWith$Mutation$UpdateTable$update_Graph_ql$returning<
                      Mutation$UpdateTable$update_Graph_ql$returning>>)
          _fn);
}

class _CopyWithImpl$Mutation$UpdateTable$update_Graph_ql<TRes>
    implements CopyWith$Mutation$UpdateTable$update_Graph_ql<TRes> {
  _CopyWithImpl$Mutation$UpdateTable$update_Graph_ql(
    this._instance,
    this._then,
  );

  final Mutation$UpdateTable$update_Graph_ql _instance;

  final TRes Function(Mutation$UpdateTable$update_Graph_ql) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? returning = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$UpdateTable$update_Graph_ql(
        returning: returning == _undefined || returning == null
            ? _instance.returning
            : (returning
                as List<Mutation$UpdateTable$update_Graph_ql$returning>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes returning(
          Iterable<Mutation$UpdateTable$update_Graph_ql$returning> Function(
                  Iterable<
                      CopyWith$Mutation$UpdateTable$update_Graph_ql$returning<
                          Mutation$UpdateTable$update_Graph_ql$returning>>)
              _fn) =>
      call(
          returning: _fn(_instance.returning.map(
              (e) => CopyWith$Mutation$UpdateTable$update_Graph_ql$returning(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Mutation$UpdateTable$update_Graph_ql<TRes>
    implements CopyWith$Mutation$UpdateTable$update_Graph_ql<TRes> {
  _CopyWithStubImpl$Mutation$UpdateTable$update_Graph_ql(this._res);

  TRes _res;

  call({
    List<Mutation$UpdateTable$update_Graph_ql$returning>? returning,
    String? $__typename,
  }) =>
      _res;

  returning(_fn) => _res;
}

class Mutation$UpdateTable$update_Graph_ql$returning {
  Mutation$UpdateTable$update_Graph_ql$returning({
    required this.id,
    required this.name,
    this.$__typename = 'Graph_ql',
  });

  factory Mutation$UpdateTable$update_Graph_ql$returning.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateTable$update_Graph_ql$returning(
      id: (l$id as int),
      name: (l$name as String),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final String name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$UpdateTable$update_Graph_ql$returning) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$UpdateTable$update_Graph_ql$returning
    on Mutation$UpdateTable$update_Graph_ql$returning {
  CopyWith$Mutation$UpdateTable$update_Graph_ql$returning<
          Mutation$UpdateTable$update_Graph_ql$returning>
      get copyWith => CopyWith$Mutation$UpdateTable$update_Graph_ql$returning(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$UpdateTable$update_Graph_ql$returning<TRes> {
  factory CopyWith$Mutation$UpdateTable$update_Graph_ql$returning(
    Mutation$UpdateTable$update_Graph_ql$returning instance,
    TRes Function(Mutation$UpdateTable$update_Graph_ql$returning) then,
  ) = _CopyWithImpl$Mutation$UpdateTable$update_Graph_ql$returning;

  factory CopyWith$Mutation$UpdateTable$update_Graph_ql$returning.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$UpdateTable$update_Graph_ql$returning;

  TRes call({
    int? id,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$UpdateTable$update_Graph_ql$returning<TRes>
    implements CopyWith$Mutation$UpdateTable$update_Graph_ql$returning<TRes> {
  _CopyWithImpl$Mutation$UpdateTable$update_Graph_ql$returning(
    this._instance,
    this._then,
  );

  final Mutation$UpdateTable$update_Graph_ql$returning _instance;

  final TRes Function(Mutation$UpdateTable$update_Graph_ql$returning) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$UpdateTable$update_Graph_ql$returning(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$UpdateTable$update_Graph_ql$returning<TRes>
    implements CopyWith$Mutation$UpdateTable$update_Graph_ql$returning<TRes> {
  _CopyWithStubImpl$Mutation$UpdateTable$update_Graph_ql$returning(this._res);

  TRes _res;

  call({
    int? id,
    String? name,
    String? $__typename,
  }) =>
      _res;
}
