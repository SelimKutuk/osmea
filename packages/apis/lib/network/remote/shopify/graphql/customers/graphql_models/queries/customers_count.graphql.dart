import 'package:gql/ast.dart';

class Variables$Query$CustomersCount {
  factory Variables$Query$CustomersCount({String? query}) =>
      Variables$Query$CustomersCount._({
        if (query != null) r'query': query,
      });

  Variables$Query$CustomersCount._(this._$data);

  factory Variables$Query$CustomersCount.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('query')) {
      final l$query = data['query'];
      result$data['query'] = (l$query as String?);
    }
    return Variables$Query$CustomersCount._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get query => (_$data['query'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('query')) {
      final l$query = query;
      result$data['query'] = l$query;
    }
    return result$data;
  }

  CopyWith$Variables$Query$CustomersCount<Variables$Query$CustomersCount>
      get copyWith => CopyWith$Variables$Query$CustomersCount(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$CustomersCount ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$query = query;
    final lOther$query = other.query;
    if (_$data.containsKey('query') != other._$data.containsKey('query')) {
      return false;
    }
    if (l$query != lOther$query) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$query = query;
    return Object.hashAll([_$data.containsKey('query') ? l$query : const {}]);
  }
}

abstract class CopyWith$Variables$Query$CustomersCount<TRes> {
  factory CopyWith$Variables$Query$CustomersCount(
    Variables$Query$CustomersCount instance,
    TRes Function(Variables$Query$CustomersCount) then,
  ) = _CopyWithImpl$Variables$Query$CustomersCount;

  factory CopyWith$Variables$Query$CustomersCount.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$CustomersCount;

  TRes call({String? query});
}

class _CopyWithImpl$Variables$Query$CustomersCount<TRes>
    implements CopyWith$Variables$Query$CustomersCount<TRes> {
  _CopyWithImpl$Variables$Query$CustomersCount(
    this._instance,
    this._then,
  );

  final Variables$Query$CustomersCount _instance;

  final TRes Function(Variables$Query$CustomersCount) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? query = _undefined}) =>
      _then(Variables$Query$CustomersCount._({
        ..._instance._$data,
        if (query != _undefined) 'query': (query as String?),
      }));
}

class _CopyWithStubImpl$Variables$Query$CustomersCount<TRes>
    implements CopyWith$Variables$Query$CustomersCount<TRes> {
  _CopyWithStubImpl$Variables$Query$CustomersCount(this._res);

  TRes _res;

  call({String? query}) => _res;
}

class Query$CustomersCount {
  Query$CustomersCount({
    this.customers,
    this.$__typename = 'Query',
  });

  factory Query$CustomersCount.fromJson(Map<String, dynamic> json) {
    final l$customers = json['customers'];
    final l$$__typename = json['__typename'];
    return Query$CustomersCount(
      customers: l$customers == null
          ? null
          : Query$CustomersCount$customers.fromJson(
              (l$customers as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$CustomersCount$customers? customers;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$customers = customers;
    _resultData['customers'] = l$customers?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$customers = customers;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$customers,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$CustomersCount || runtimeType != other.runtimeType) {
      return false;
    }
    final l$customers = customers;
    final lOther$customers = other.customers;
    if (l$customers != lOther$customers) {
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

extension UtilityExtension$Query$CustomersCount on Query$CustomersCount {
  CopyWith$Query$CustomersCount<Query$CustomersCount> get copyWith =>
      CopyWith$Query$CustomersCount(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$CustomersCount<TRes> {
  factory CopyWith$Query$CustomersCount(
    Query$CustomersCount instance,
    TRes Function(Query$CustomersCount) then,
  ) = _CopyWithImpl$Query$CustomersCount;

  factory CopyWith$Query$CustomersCount.stub(TRes res) =
      _CopyWithStubImpl$Query$CustomersCount;

  TRes call({
    Query$CustomersCount$customers? customers,
    String? $__typename,
  });
  CopyWith$Query$CustomersCount$customers<TRes> get customers;
}

class _CopyWithImpl$Query$CustomersCount<TRes>
    implements CopyWith$Query$CustomersCount<TRes> {
  _CopyWithImpl$Query$CustomersCount(
    this._instance,
    this._then,
  );

  final Query$CustomersCount _instance;

  final TRes Function(Query$CustomersCount) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? customers = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$CustomersCount(
        customers: customers == _undefined
            ? _instance.customers
            : (customers as Query$CustomersCount$customers?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$CustomersCount$customers<TRes> get customers {
    final local$customers = _instance.customers;
    return local$customers == null
        ? CopyWith$Query$CustomersCount$customers.stub(_then(_instance))
        : CopyWith$Query$CustomersCount$customers(
            local$customers, (e) => call(customers: e));
  }
}

class _CopyWithStubImpl$Query$CustomersCount<TRes>
    implements CopyWith$Query$CustomersCount<TRes> {
  _CopyWithStubImpl$Query$CustomersCount(this._res);

  TRes _res;

  call({
    Query$CustomersCount$customers? customers,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$CustomersCount$customers<TRes> get customers =>
      CopyWith$Query$CustomersCount$customers.stub(_res);
}

const documentNodeQueryCustomersCount = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'CustomersCount'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'query')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'customers'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'first'),
            value: IntValueNode(value: '1'),
          ),
          ArgumentNode(
            name: NameNode(value: 'query'),
            value: VariableNode(name: NameNode(value: 'query')),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'pageInfo'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'hasNextPage'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'hasPreviousPage'),
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
            name: NameNode(value: 'edges'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'node'),
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

class Query$CustomersCount$customers {
  Query$CustomersCount$customers({
    required this.pageInfo,
    required this.edges,
    this.$__typename = 'CustomerConnection',
  });

  factory Query$CustomersCount$customers.fromJson(Map<String, dynamic> json) {
    final l$pageInfo = json['pageInfo'];
    final l$edges = json['edges'];
    final l$$__typename = json['__typename'];
    return Query$CustomersCount$customers(
      pageInfo: Query$CustomersCount$customers$pageInfo.fromJson(
          (l$pageInfo as Map<String, dynamic>)),
      edges: (l$edges as List<dynamic>)
          .map((e) => Query$CustomersCount$customers$edges.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$CustomersCount$customers$pageInfo pageInfo;

  final List<Query$CustomersCount$customers$edges> edges;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$pageInfo = pageInfo;
    _resultData['pageInfo'] = l$pageInfo.toJson();
    final l$edges = edges;
    _resultData['edges'] = l$edges.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$pageInfo = pageInfo;
    final l$edges = edges;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$pageInfo,
      Object.hashAll(l$edges.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$CustomersCount$customers ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$pageInfo = pageInfo;
    final lOther$pageInfo = other.pageInfo;
    if (l$pageInfo != lOther$pageInfo) {
      return false;
    }
    final l$edges = edges;
    final lOther$edges = other.edges;
    if (l$edges.length != lOther$edges.length) {
      return false;
    }
    for (int i = 0; i < l$edges.length; i++) {
      final l$edges$entry = l$edges[i];
      final lOther$edges$entry = lOther$edges[i];
      if (l$edges$entry != lOther$edges$entry) {
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

extension UtilityExtension$Query$CustomersCount$customers
    on Query$CustomersCount$customers {
  CopyWith$Query$CustomersCount$customers<Query$CustomersCount$customers>
      get copyWith => CopyWith$Query$CustomersCount$customers(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$CustomersCount$customers<TRes> {
  factory CopyWith$Query$CustomersCount$customers(
    Query$CustomersCount$customers instance,
    TRes Function(Query$CustomersCount$customers) then,
  ) = _CopyWithImpl$Query$CustomersCount$customers;

  factory CopyWith$Query$CustomersCount$customers.stub(TRes res) =
      _CopyWithStubImpl$Query$CustomersCount$customers;

  TRes call({
    Query$CustomersCount$customers$pageInfo? pageInfo,
    List<Query$CustomersCount$customers$edges>? edges,
    String? $__typename,
  });
  CopyWith$Query$CustomersCount$customers$pageInfo<TRes> get pageInfo;
  TRes edges(
      Iterable<Query$CustomersCount$customers$edges> Function(
              Iterable<
                  CopyWith$Query$CustomersCount$customers$edges<
                      Query$CustomersCount$customers$edges>>)
          _fn);
}

class _CopyWithImpl$Query$CustomersCount$customers<TRes>
    implements CopyWith$Query$CustomersCount$customers<TRes> {
  _CopyWithImpl$Query$CustomersCount$customers(
    this._instance,
    this._then,
  );

  final Query$CustomersCount$customers _instance;

  final TRes Function(Query$CustomersCount$customers) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? pageInfo = _undefined,
    Object? edges = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$CustomersCount$customers(
        pageInfo: pageInfo == _undefined || pageInfo == null
            ? _instance.pageInfo
            : (pageInfo as Query$CustomersCount$customers$pageInfo),
        edges: edges == _undefined || edges == null
            ? _instance.edges
            : (edges as List<Query$CustomersCount$customers$edges>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$CustomersCount$customers$pageInfo<TRes> get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return CopyWith$Query$CustomersCount$customers$pageInfo(
        local$pageInfo, (e) => call(pageInfo: e));
  }

  TRes edges(
          Iterable<Query$CustomersCount$customers$edges> Function(
                  Iterable<
                      CopyWith$Query$CustomersCount$customers$edges<
                          Query$CustomersCount$customers$edges>>)
              _fn) =>
      call(
          edges: _fn(_instance.edges
              .map((e) => CopyWith$Query$CustomersCount$customers$edges(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$CustomersCount$customers<TRes>
    implements CopyWith$Query$CustomersCount$customers<TRes> {
  _CopyWithStubImpl$Query$CustomersCount$customers(this._res);

  TRes _res;

  call({
    Query$CustomersCount$customers$pageInfo? pageInfo,
    List<Query$CustomersCount$customers$edges>? edges,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$CustomersCount$customers$pageInfo<TRes> get pageInfo =>
      CopyWith$Query$CustomersCount$customers$pageInfo.stub(_res);

  edges(_fn) => _res;
}

class Query$CustomersCount$customers$pageInfo {
  Query$CustomersCount$customers$pageInfo({
    required this.hasNextPage,
    required this.hasPreviousPage,
    this.$__typename = 'PageInfo',
  });

  factory Query$CustomersCount$customers$pageInfo.fromJson(
      Map<String, dynamic> json) {
    final l$hasNextPage = json['hasNextPage'];
    final l$hasPreviousPage = json['hasPreviousPage'];
    final l$$__typename = json['__typename'];
    return Query$CustomersCount$customers$pageInfo(
      hasNextPage: (l$hasNextPage as bool),
      hasPreviousPage: (l$hasPreviousPage as bool),
      $__typename: (l$$__typename as String),
    );
  }

  final bool hasNextPage;

  final bool hasPreviousPage;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$hasNextPage = hasNextPage;
    _resultData['hasNextPage'] = l$hasNextPage;
    final l$hasPreviousPage = hasPreviousPage;
    _resultData['hasPreviousPage'] = l$hasPreviousPage;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$hasNextPage = hasNextPage;
    final l$hasPreviousPage = hasPreviousPage;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$hasNextPage,
      l$hasPreviousPage,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$CustomersCount$customers$pageInfo ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$hasNextPage = hasNextPage;
    final lOther$hasNextPage = other.hasNextPage;
    if (l$hasNextPage != lOther$hasNextPage) {
      return false;
    }
    final l$hasPreviousPage = hasPreviousPage;
    final lOther$hasPreviousPage = other.hasPreviousPage;
    if (l$hasPreviousPage != lOther$hasPreviousPage) {
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

extension UtilityExtension$Query$CustomersCount$customers$pageInfo
    on Query$CustomersCount$customers$pageInfo {
  CopyWith$Query$CustomersCount$customers$pageInfo<
          Query$CustomersCount$customers$pageInfo>
      get copyWith => CopyWith$Query$CustomersCount$customers$pageInfo(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$CustomersCount$customers$pageInfo<TRes> {
  factory CopyWith$Query$CustomersCount$customers$pageInfo(
    Query$CustomersCount$customers$pageInfo instance,
    TRes Function(Query$CustomersCount$customers$pageInfo) then,
  ) = _CopyWithImpl$Query$CustomersCount$customers$pageInfo;

  factory CopyWith$Query$CustomersCount$customers$pageInfo.stub(TRes res) =
      _CopyWithStubImpl$Query$CustomersCount$customers$pageInfo;

  TRes call({
    bool? hasNextPage,
    bool? hasPreviousPage,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$CustomersCount$customers$pageInfo<TRes>
    implements CopyWith$Query$CustomersCount$customers$pageInfo<TRes> {
  _CopyWithImpl$Query$CustomersCount$customers$pageInfo(
    this._instance,
    this._then,
  );

  final Query$CustomersCount$customers$pageInfo _instance;

  final TRes Function(Query$CustomersCount$customers$pageInfo) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? hasNextPage = _undefined,
    Object? hasPreviousPage = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$CustomersCount$customers$pageInfo(
        hasNextPage: hasNextPage == _undefined || hasNextPage == null
            ? _instance.hasNextPage
            : (hasNextPage as bool),
        hasPreviousPage:
            hasPreviousPage == _undefined || hasPreviousPage == null
                ? _instance.hasPreviousPage
                : (hasPreviousPage as bool),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$CustomersCount$customers$pageInfo<TRes>
    implements CopyWith$Query$CustomersCount$customers$pageInfo<TRes> {
  _CopyWithStubImpl$Query$CustomersCount$customers$pageInfo(this._res);

  TRes _res;

  call({
    bool? hasNextPage,
    bool? hasPreviousPage,
    String? $__typename,
  }) =>
      _res;
}

class Query$CustomersCount$customers$edges {
  Query$CustomersCount$customers$edges({
    required this.node,
    this.$__typename = 'CustomerEdge',
  });

  factory Query$CustomersCount$customers$edges.fromJson(
      Map<String, dynamic> json) {
    final l$node = json['node'];
    final l$$__typename = json['__typename'];
    return Query$CustomersCount$customers$edges(
      node: Query$CustomersCount$customers$edges$node.fromJson(
          (l$node as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$CustomersCount$customers$edges$node node;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$node = node;
    _resultData['node'] = l$node.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$node = node;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$node,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$CustomersCount$customers$edges ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$node = node;
    final lOther$node = other.node;
    if (l$node != lOther$node) {
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

extension UtilityExtension$Query$CustomersCount$customers$edges
    on Query$CustomersCount$customers$edges {
  CopyWith$Query$CustomersCount$customers$edges<
          Query$CustomersCount$customers$edges>
      get copyWith => CopyWith$Query$CustomersCount$customers$edges(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$CustomersCount$customers$edges<TRes> {
  factory CopyWith$Query$CustomersCount$customers$edges(
    Query$CustomersCount$customers$edges instance,
    TRes Function(Query$CustomersCount$customers$edges) then,
  ) = _CopyWithImpl$Query$CustomersCount$customers$edges;

  factory CopyWith$Query$CustomersCount$customers$edges.stub(TRes res) =
      _CopyWithStubImpl$Query$CustomersCount$customers$edges;

  TRes call({
    Query$CustomersCount$customers$edges$node? node,
    String? $__typename,
  });
  CopyWith$Query$CustomersCount$customers$edges$node<TRes> get node;
}

class _CopyWithImpl$Query$CustomersCount$customers$edges<TRes>
    implements CopyWith$Query$CustomersCount$customers$edges<TRes> {
  _CopyWithImpl$Query$CustomersCount$customers$edges(
    this._instance,
    this._then,
  );

  final Query$CustomersCount$customers$edges _instance;

  final TRes Function(Query$CustomersCount$customers$edges) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? node = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$CustomersCount$customers$edges(
        node: node == _undefined || node == null
            ? _instance.node
            : (node as Query$CustomersCount$customers$edges$node),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$CustomersCount$customers$edges$node<TRes> get node {
    final local$node = _instance.node;
    return CopyWith$Query$CustomersCount$customers$edges$node(
        local$node, (e) => call(node: e));
  }
}

class _CopyWithStubImpl$Query$CustomersCount$customers$edges<TRes>
    implements CopyWith$Query$CustomersCount$customers$edges<TRes> {
  _CopyWithStubImpl$Query$CustomersCount$customers$edges(this._res);

  TRes _res;

  call({
    Query$CustomersCount$customers$edges$node? node,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$CustomersCount$customers$edges$node<TRes> get node =>
      CopyWith$Query$CustomersCount$customers$edges$node.stub(_res);
}

class Query$CustomersCount$customers$edges$node {
  Query$CustomersCount$customers$edges$node({
    required this.id,
    this.$__typename = 'Customer',
  });

  factory Query$CustomersCount$customers$edges$node.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Query$CustomersCount$customers$edges$node(
      id: (l$id as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$CustomersCount$customers$edges$node ||
        runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$CustomersCount$customers$edges$node
    on Query$CustomersCount$customers$edges$node {
  CopyWith$Query$CustomersCount$customers$edges$node<
          Query$CustomersCount$customers$edges$node>
      get copyWith => CopyWith$Query$CustomersCount$customers$edges$node(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$CustomersCount$customers$edges$node<TRes> {
  factory CopyWith$Query$CustomersCount$customers$edges$node(
    Query$CustomersCount$customers$edges$node instance,
    TRes Function(Query$CustomersCount$customers$edges$node) then,
  ) = _CopyWithImpl$Query$CustomersCount$customers$edges$node;

  factory CopyWith$Query$CustomersCount$customers$edges$node.stub(TRes res) =
      _CopyWithStubImpl$Query$CustomersCount$customers$edges$node;

  TRes call({
    String? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$CustomersCount$customers$edges$node<TRes>
    implements CopyWith$Query$CustomersCount$customers$edges$node<TRes> {
  _CopyWithImpl$Query$CustomersCount$customers$edges$node(
    this._instance,
    this._then,
  );

  final Query$CustomersCount$customers$edges$node _instance;

  final TRes Function(Query$CustomersCount$customers$edges$node) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$CustomersCount$customers$edges$node(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$CustomersCount$customers$edges$node<TRes>
    implements CopyWith$Query$CustomersCount$customers$edges$node<TRes> {
  _CopyWithStubImpl$Query$CustomersCount$customers$edges$node(this._res);

  TRes _res;

  call({
    String? id,
    String? $__typename,
  }) =>
      _res;
}
