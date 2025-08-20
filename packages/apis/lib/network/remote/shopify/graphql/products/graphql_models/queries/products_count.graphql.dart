import 'package:gql/ast.dart';

class Variables$Query$ProductsCount {
  factory Variables$Query$ProductsCount({String? query}) =>
      Variables$Query$ProductsCount._({
        if (query != null) r'query': query,
      });

  Variables$Query$ProductsCount._(this._$data);

  factory Variables$Query$ProductsCount.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('query')) {
      final l$query = data['query'];
      result$data['query'] = (l$query as String?);
    }
    return Variables$Query$ProductsCount._(result$data);
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

  CopyWith$Variables$Query$ProductsCount<Variables$Query$ProductsCount>
      get copyWith => CopyWith$Variables$Query$ProductsCount(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$ProductsCount ||
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

abstract class CopyWith$Variables$Query$ProductsCount<TRes> {
  factory CopyWith$Variables$Query$ProductsCount(
    Variables$Query$ProductsCount instance,
    TRes Function(Variables$Query$ProductsCount) then,
  ) = _CopyWithImpl$Variables$Query$ProductsCount;

  factory CopyWith$Variables$Query$ProductsCount.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$ProductsCount;

  TRes call({String? query});
}

class _CopyWithImpl$Variables$Query$ProductsCount<TRes>
    implements CopyWith$Variables$Query$ProductsCount<TRes> {
  _CopyWithImpl$Variables$Query$ProductsCount(
    this._instance,
    this._then,
  );

  final Variables$Query$ProductsCount _instance;

  final TRes Function(Variables$Query$ProductsCount) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? query = _undefined}) =>
      _then(Variables$Query$ProductsCount._({
        ..._instance._$data,
        if (query != _undefined) 'query': (query as String?),
      }));
}

class _CopyWithStubImpl$Variables$Query$ProductsCount<TRes>
    implements CopyWith$Variables$Query$ProductsCount<TRes> {
  _CopyWithStubImpl$Variables$Query$ProductsCount(this._res);

  TRes _res;

  call({String? query}) => _res;
}

class Query$ProductsCount {
  Query$ProductsCount({
    this.products,
    this.$__typename = 'Query',
  });

  factory Query$ProductsCount.fromJson(Map<String, dynamic> json) {
    final l$products = json['products'];
    final l$$__typename = json['__typename'];
    return Query$ProductsCount(
      products: l$products == null
          ? null
          : Query$ProductsCount$products.fromJson(
              (l$products as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$ProductsCount$products? products;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$products = products;
    _resultData['products'] = l$products?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$products = products;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$products,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$ProductsCount || runtimeType != other.runtimeType) {
      return false;
    }
    final l$products = products;
    final lOther$products = other.products;
    if (l$products != lOther$products) {
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

extension UtilityExtension$Query$ProductsCount on Query$ProductsCount {
  CopyWith$Query$ProductsCount<Query$ProductsCount> get copyWith =>
      CopyWith$Query$ProductsCount(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ProductsCount<TRes> {
  factory CopyWith$Query$ProductsCount(
    Query$ProductsCount instance,
    TRes Function(Query$ProductsCount) then,
  ) = _CopyWithImpl$Query$ProductsCount;

  factory CopyWith$Query$ProductsCount.stub(TRes res) =
      _CopyWithStubImpl$Query$ProductsCount;

  TRes call({
    Query$ProductsCount$products? products,
    String? $__typename,
  });
  CopyWith$Query$ProductsCount$products<TRes> get products;
}

class _CopyWithImpl$Query$ProductsCount<TRes>
    implements CopyWith$Query$ProductsCount<TRes> {
  _CopyWithImpl$Query$ProductsCount(
    this._instance,
    this._then,
  );

  final Query$ProductsCount _instance;

  final TRes Function(Query$ProductsCount) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? products = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$ProductsCount(
        products: products == _undefined
            ? _instance.products
            : (products as Query$ProductsCount$products?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$ProductsCount$products<TRes> get products {
    final local$products = _instance.products;
    return local$products == null
        ? CopyWith$Query$ProductsCount$products.stub(_then(_instance))
        : CopyWith$Query$ProductsCount$products(
            local$products, (e) => call(products: e));
  }
}

class _CopyWithStubImpl$Query$ProductsCount<TRes>
    implements CopyWith$Query$ProductsCount<TRes> {
  _CopyWithStubImpl$Query$ProductsCount(this._res);

  TRes _res;

  call({
    Query$ProductsCount$products? products,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$ProductsCount$products<TRes> get products =>
      CopyWith$Query$ProductsCount$products.stub(_res);
}

const documentNodeQueryProductsCount = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'ProductsCount'),
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
        name: NameNode(value: 'products'),
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

class Query$ProductsCount$products {
  Query$ProductsCount$products({
    required this.pageInfo,
    required this.edges,
    this.$__typename = 'ProductConnection',
  });

  factory Query$ProductsCount$products.fromJson(Map<String, dynamic> json) {
    final l$pageInfo = json['pageInfo'];
    final l$edges = json['edges'];
    final l$$__typename = json['__typename'];
    return Query$ProductsCount$products(
      pageInfo: Query$ProductsCount$products$pageInfo.fromJson(
          (l$pageInfo as Map<String, dynamic>)),
      edges: (l$edges as List<dynamic>)
          .map((e) => Query$ProductsCount$products$edges.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$ProductsCount$products$pageInfo pageInfo;

  final List<Query$ProductsCount$products$edges> edges;

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
    if (other is! Query$ProductsCount$products ||
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

extension UtilityExtension$Query$ProductsCount$products
    on Query$ProductsCount$products {
  CopyWith$Query$ProductsCount$products<Query$ProductsCount$products>
      get copyWith => CopyWith$Query$ProductsCount$products(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$ProductsCount$products<TRes> {
  factory CopyWith$Query$ProductsCount$products(
    Query$ProductsCount$products instance,
    TRes Function(Query$ProductsCount$products) then,
  ) = _CopyWithImpl$Query$ProductsCount$products;

  factory CopyWith$Query$ProductsCount$products.stub(TRes res) =
      _CopyWithStubImpl$Query$ProductsCount$products;

  TRes call({
    Query$ProductsCount$products$pageInfo? pageInfo,
    List<Query$ProductsCount$products$edges>? edges,
    String? $__typename,
  });
  CopyWith$Query$ProductsCount$products$pageInfo<TRes> get pageInfo;
  TRes edges(
      Iterable<Query$ProductsCount$products$edges> Function(
              Iterable<
                  CopyWith$Query$ProductsCount$products$edges<
                      Query$ProductsCount$products$edges>>)
          _fn);
}

class _CopyWithImpl$Query$ProductsCount$products<TRes>
    implements CopyWith$Query$ProductsCount$products<TRes> {
  _CopyWithImpl$Query$ProductsCount$products(
    this._instance,
    this._then,
  );

  final Query$ProductsCount$products _instance;

  final TRes Function(Query$ProductsCount$products) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? pageInfo = _undefined,
    Object? edges = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$ProductsCount$products(
        pageInfo: pageInfo == _undefined || pageInfo == null
            ? _instance.pageInfo
            : (pageInfo as Query$ProductsCount$products$pageInfo),
        edges: edges == _undefined || edges == null
            ? _instance.edges
            : (edges as List<Query$ProductsCount$products$edges>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$ProductsCount$products$pageInfo<TRes> get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return CopyWith$Query$ProductsCount$products$pageInfo(
        local$pageInfo, (e) => call(pageInfo: e));
  }

  TRes edges(
          Iterable<Query$ProductsCount$products$edges> Function(
                  Iterable<
                      CopyWith$Query$ProductsCount$products$edges<
                          Query$ProductsCount$products$edges>>)
              _fn) =>
      call(
          edges: _fn(_instance.edges
              .map((e) => CopyWith$Query$ProductsCount$products$edges(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$ProductsCount$products<TRes>
    implements CopyWith$Query$ProductsCount$products<TRes> {
  _CopyWithStubImpl$Query$ProductsCount$products(this._res);

  TRes _res;

  call({
    Query$ProductsCount$products$pageInfo? pageInfo,
    List<Query$ProductsCount$products$edges>? edges,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$ProductsCount$products$pageInfo<TRes> get pageInfo =>
      CopyWith$Query$ProductsCount$products$pageInfo.stub(_res);

  edges(_fn) => _res;
}

class Query$ProductsCount$products$pageInfo {
  Query$ProductsCount$products$pageInfo({
    required this.hasNextPage,
    required this.hasPreviousPage,
    this.$__typename = 'PageInfo',
  });

  factory Query$ProductsCount$products$pageInfo.fromJson(
      Map<String, dynamic> json) {
    final l$hasNextPage = json['hasNextPage'];
    final l$hasPreviousPage = json['hasPreviousPage'];
    final l$$__typename = json['__typename'];
    return Query$ProductsCount$products$pageInfo(
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
    if (other is! Query$ProductsCount$products$pageInfo ||
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

extension UtilityExtension$Query$ProductsCount$products$pageInfo
    on Query$ProductsCount$products$pageInfo {
  CopyWith$Query$ProductsCount$products$pageInfo<
          Query$ProductsCount$products$pageInfo>
      get copyWith => CopyWith$Query$ProductsCount$products$pageInfo(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$ProductsCount$products$pageInfo<TRes> {
  factory CopyWith$Query$ProductsCount$products$pageInfo(
    Query$ProductsCount$products$pageInfo instance,
    TRes Function(Query$ProductsCount$products$pageInfo) then,
  ) = _CopyWithImpl$Query$ProductsCount$products$pageInfo;

  factory CopyWith$Query$ProductsCount$products$pageInfo.stub(TRes res) =
      _CopyWithStubImpl$Query$ProductsCount$products$pageInfo;

  TRes call({
    bool? hasNextPage,
    bool? hasPreviousPage,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$ProductsCount$products$pageInfo<TRes>
    implements CopyWith$Query$ProductsCount$products$pageInfo<TRes> {
  _CopyWithImpl$Query$ProductsCount$products$pageInfo(
    this._instance,
    this._then,
  );

  final Query$ProductsCount$products$pageInfo _instance;

  final TRes Function(Query$ProductsCount$products$pageInfo) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? hasNextPage = _undefined,
    Object? hasPreviousPage = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$ProductsCount$products$pageInfo(
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

class _CopyWithStubImpl$Query$ProductsCount$products$pageInfo<TRes>
    implements CopyWith$Query$ProductsCount$products$pageInfo<TRes> {
  _CopyWithStubImpl$Query$ProductsCount$products$pageInfo(this._res);

  TRes _res;

  call({
    bool? hasNextPage,
    bool? hasPreviousPage,
    String? $__typename,
  }) =>
      _res;
}

class Query$ProductsCount$products$edges {
  Query$ProductsCount$products$edges({
    required this.node,
    this.$__typename = 'ProductEdge',
  });

  factory Query$ProductsCount$products$edges.fromJson(
      Map<String, dynamic> json) {
    final l$node = json['node'];
    final l$$__typename = json['__typename'];
    return Query$ProductsCount$products$edges(
      node: Query$ProductsCount$products$edges$node.fromJson(
          (l$node as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$ProductsCount$products$edges$node node;

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
    if (other is! Query$ProductsCount$products$edges ||
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

extension UtilityExtension$Query$ProductsCount$products$edges
    on Query$ProductsCount$products$edges {
  CopyWith$Query$ProductsCount$products$edges<
          Query$ProductsCount$products$edges>
      get copyWith => CopyWith$Query$ProductsCount$products$edges(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$ProductsCount$products$edges<TRes> {
  factory CopyWith$Query$ProductsCount$products$edges(
    Query$ProductsCount$products$edges instance,
    TRes Function(Query$ProductsCount$products$edges) then,
  ) = _CopyWithImpl$Query$ProductsCount$products$edges;

  factory CopyWith$Query$ProductsCount$products$edges.stub(TRes res) =
      _CopyWithStubImpl$Query$ProductsCount$products$edges;

  TRes call({
    Query$ProductsCount$products$edges$node? node,
    String? $__typename,
  });
  CopyWith$Query$ProductsCount$products$edges$node<TRes> get node;
}

class _CopyWithImpl$Query$ProductsCount$products$edges<TRes>
    implements CopyWith$Query$ProductsCount$products$edges<TRes> {
  _CopyWithImpl$Query$ProductsCount$products$edges(
    this._instance,
    this._then,
  );

  final Query$ProductsCount$products$edges _instance;

  final TRes Function(Query$ProductsCount$products$edges) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? node = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$ProductsCount$products$edges(
        node: node == _undefined || node == null
            ? _instance.node
            : (node as Query$ProductsCount$products$edges$node),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$ProductsCount$products$edges$node<TRes> get node {
    final local$node = _instance.node;
    return CopyWith$Query$ProductsCount$products$edges$node(
        local$node, (e) => call(node: e));
  }
}

class _CopyWithStubImpl$Query$ProductsCount$products$edges<TRes>
    implements CopyWith$Query$ProductsCount$products$edges<TRes> {
  _CopyWithStubImpl$Query$ProductsCount$products$edges(this._res);

  TRes _res;

  call({
    Query$ProductsCount$products$edges$node? node,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$ProductsCount$products$edges$node<TRes> get node =>
      CopyWith$Query$ProductsCount$products$edges$node.stub(_res);
}

class Query$ProductsCount$products$edges$node {
  Query$ProductsCount$products$edges$node({
    required this.id,
    this.$__typename = 'Product',
  });

  factory Query$ProductsCount$products$edges$node.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Query$ProductsCount$products$edges$node(
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
    if (other is! Query$ProductsCount$products$edges$node ||
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

extension UtilityExtension$Query$ProductsCount$products$edges$node
    on Query$ProductsCount$products$edges$node {
  CopyWith$Query$ProductsCount$products$edges$node<
          Query$ProductsCount$products$edges$node>
      get copyWith => CopyWith$Query$ProductsCount$products$edges$node(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$ProductsCount$products$edges$node<TRes> {
  factory CopyWith$Query$ProductsCount$products$edges$node(
    Query$ProductsCount$products$edges$node instance,
    TRes Function(Query$ProductsCount$products$edges$node) then,
  ) = _CopyWithImpl$Query$ProductsCount$products$edges$node;

  factory CopyWith$Query$ProductsCount$products$edges$node.stub(TRes res) =
      _CopyWithStubImpl$Query$ProductsCount$products$edges$node;

  TRes call({
    String? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$ProductsCount$products$edges$node<TRes>
    implements CopyWith$Query$ProductsCount$products$edges$node<TRes> {
  _CopyWithImpl$Query$ProductsCount$products$edges$node(
    this._instance,
    this._then,
  );

  final Query$ProductsCount$products$edges$node _instance;

  final TRes Function(Query$ProductsCount$products$edges$node) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$ProductsCount$products$edges$node(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$ProductsCount$products$edges$node<TRes>
    implements CopyWith$Query$ProductsCount$products$edges$node<TRes> {
  _CopyWithStubImpl$Query$ProductsCount$products$edges$node(this._res);

  TRes _res;

  call({
    String? id,
    String? $__typename,
  }) =>
      _res;
}
