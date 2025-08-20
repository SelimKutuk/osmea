import 'package:gql/ast.dart';

class Variables$Mutation$DisableCustomer {
  factory Variables$Mutation$DisableCustomer({required String id}) =>
      Variables$Mutation$DisableCustomer._({
        r'id': id,
      });

  Variables$Mutation$DisableCustomer._(this._$data);

  factory Variables$Mutation$DisableCustomer.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    return Variables$Mutation$DisableCustomer._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    return result$data;
  }

  CopyWith$Variables$Mutation$DisableCustomer<
          Variables$Mutation$DisableCustomer>
      get copyWith => CopyWith$Variables$Mutation$DisableCustomer(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$DisableCustomer ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    return Object.hashAll([l$id]);
  }
}

abstract class CopyWith$Variables$Mutation$DisableCustomer<TRes> {
  factory CopyWith$Variables$Mutation$DisableCustomer(
    Variables$Mutation$DisableCustomer instance,
    TRes Function(Variables$Mutation$DisableCustomer) then,
  ) = _CopyWithImpl$Variables$Mutation$DisableCustomer;

  factory CopyWith$Variables$Mutation$DisableCustomer.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$DisableCustomer;

  TRes call({String? id});
}

class _CopyWithImpl$Variables$Mutation$DisableCustomer<TRes>
    implements CopyWith$Variables$Mutation$DisableCustomer<TRes> {
  _CopyWithImpl$Variables$Mutation$DisableCustomer(
    this._instance,
    this._then,
  );

  final Variables$Mutation$DisableCustomer _instance;

  final TRes Function(Variables$Mutation$DisableCustomer) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) =>
      _then(Variables$Mutation$DisableCustomer._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as String),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$DisableCustomer<TRes>
    implements CopyWith$Variables$Mutation$DisableCustomer<TRes> {
  _CopyWithStubImpl$Variables$Mutation$DisableCustomer(this._res);

  TRes _res;

  call({String? id}) => _res;
}

class Mutation$DisableCustomer {
  Mutation$DisableCustomer({
    this.customerDisable,
    this.$__typename = 'Mutation',
  });

  factory Mutation$DisableCustomer.fromJson(Map<String, dynamic> json) {
    final l$customerDisable = json['customerDisable'];
    final l$$__typename = json['__typename'];
    return Mutation$DisableCustomer(
      customerDisable: l$customerDisable == null
          ? null
          : Mutation$DisableCustomer$customerDisable.fromJson(
              (l$customerDisable as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$DisableCustomer$customerDisable? customerDisable;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$customerDisable = customerDisable;
    _resultData['customerDisable'] = l$customerDisable?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$customerDisable = customerDisable;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$customerDisable,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$DisableCustomer ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$customerDisable = customerDisable;
    final lOther$customerDisable = other.customerDisable;
    if (l$customerDisable != lOther$customerDisable) {
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

extension UtilityExtension$Mutation$DisableCustomer
    on Mutation$DisableCustomer {
  CopyWith$Mutation$DisableCustomer<Mutation$DisableCustomer> get copyWith =>
      CopyWith$Mutation$DisableCustomer(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$DisableCustomer<TRes> {
  factory CopyWith$Mutation$DisableCustomer(
    Mutation$DisableCustomer instance,
    TRes Function(Mutation$DisableCustomer) then,
  ) = _CopyWithImpl$Mutation$DisableCustomer;

  factory CopyWith$Mutation$DisableCustomer.stub(TRes res) =
      _CopyWithStubImpl$Mutation$DisableCustomer;

  TRes call({
    Mutation$DisableCustomer$customerDisable? customerDisable,
    String? $__typename,
  });
  CopyWith$Mutation$DisableCustomer$customerDisable<TRes> get customerDisable;
}

class _CopyWithImpl$Mutation$DisableCustomer<TRes>
    implements CopyWith$Mutation$DisableCustomer<TRes> {
  _CopyWithImpl$Mutation$DisableCustomer(
    this._instance,
    this._then,
  );

  final Mutation$DisableCustomer _instance;

  final TRes Function(Mutation$DisableCustomer) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? customerDisable = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$DisableCustomer(
        customerDisable: customerDisable == _undefined
            ? _instance.customerDisable
            : (customerDisable as Mutation$DisableCustomer$customerDisable?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$DisableCustomer$customerDisable<TRes> get customerDisable {
    final local$customerDisable = _instance.customerDisable;
    return local$customerDisable == null
        ? CopyWith$Mutation$DisableCustomer$customerDisable.stub(
            _then(_instance))
        : CopyWith$Mutation$DisableCustomer$customerDisable(
            local$customerDisable, (e) => call(customerDisable: e));
  }
}

class _CopyWithStubImpl$Mutation$DisableCustomer<TRes>
    implements CopyWith$Mutation$DisableCustomer<TRes> {
  _CopyWithStubImpl$Mutation$DisableCustomer(this._res);

  TRes _res;

  call({
    Mutation$DisableCustomer$customerDisable? customerDisable,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$DisableCustomer$customerDisable<TRes> get customerDisable =>
      CopyWith$Mutation$DisableCustomer$customerDisable.stub(_res);
}

const documentNodeMutationDisableCustomer = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'DisableCustomer'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'id')),
        type: NamedTypeNode(
          name: NameNode(value: 'ID'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'customerDisable'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'input'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: 'id'),
                value: VariableNode(name: NameNode(value: 'id')),
              )
            ]),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'customer'),
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
                name: NameNode(value: 'firstName'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'lastName'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'email'),
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
            name: NameNode(value: 'userErrors'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'field'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'message'),
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

class Mutation$DisableCustomer$customerDisable {
  Mutation$DisableCustomer$customerDisable({
    this.customer,
    required this.userErrors,
    this.$__typename = 'CustomerDisablePayload',
  });

  factory Mutation$DisableCustomer$customerDisable.fromJson(
      Map<String, dynamic> json) {
    final l$customer = json['customer'];
    final l$userErrors = json['userErrors'];
    final l$$__typename = json['__typename'];
    return Mutation$DisableCustomer$customerDisable(
      customer: l$customer == null
          ? null
          : Mutation$DisableCustomer$customerDisable$customer.fromJson(
              (l$customer as Map<String, dynamic>)),
      userErrors: (l$userErrors as List<dynamic>)
          .map((e) =>
              Mutation$DisableCustomer$customerDisable$userErrors.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$DisableCustomer$customerDisable$customer? customer;

  final List<Mutation$DisableCustomer$customerDisable$userErrors> userErrors;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$customer = customer;
    _resultData['customer'] = l$customer?.toJson();
    final l$userErrors = userErrors;
    _resultData['userErrors'] = l$userErrors.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$customer = customer;
    final l$userErrors = userErrors;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$customer,
      Object.hashAll(l$userErrors.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$DisableCustomer$customerDisable ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$customer = customer;
    final lOther$customer = other.customer;
    if (l$customer != lOther$customer) {
      return false;
    }
    final l$userErrors = userErrors;
    final lOther$userErrors = other.userErrors;
    if (l$userErrors.length != lOther$userErrors.length) {
      return false;
    }
    for (int i = 0; i < l$userErrors.length; i++) {
      final l$userErrors$entry = l$userErrors[i];
      final lOther$userErrors$entry = lOther$userErrors[i];
      if (l$userErrors$entry != lOther$userErrors$entry) {
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

extension UtilityExtension$Mutation$DisableCustomer$customerDisable
    on Mutation$DisableCustomer$customerDisable {
  CopyWith$Mutation$DisableCustomer$customerDisable<
          Mutation$DisableCustomer$customerDisable>
      get copyWith => CopyWith$Mutation$DisableCustomer$customerDisable(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$DisableCustomer$customerDisable<TRes> {
  factory CopyWith$Mutation$DisableCustomer$customerDisable(
    Mutation$DisableCustomer$customerDisable instance,
    TRes Function(Mutation$DisableCustomer$customerDisable) then,
  ) = _CopyWithImpl$Mutation$DisableCustomer$customerDisable;

  factory CopyWith$Mutation$DisableCustomer$customerDisable.stub(TRes res) =
      _CopyWithStubImpl$Mutation$DisableCustomer$customerDisable;

  TRes call({
    Mutation$DisableCustomer$customerDisable$customer? customer,
    List<Mutation$DisableCustomer$customerDisable$userErrors>? userErrors,
    String? $__typename,
  });
  CopyWith$Mutation$DisableCustomer$customerDisable$customer<TRes> get customer;
  TRes userErrors(
      Iterable<Mutation$DisableCustomer$customerDisable$userErrors> Function(
              Iterable<
                  CopyWith$Mutation$DisableCustomer$customerDisable$userErrors<
                      Mutation$DisableCustomer$customerDisable$userErrors>>)
          _fn);
}

class _CopyWithImpl$Mutation$DisableCustomer$customerDisable<TRes>
    implements CopyWith$Mutation$DisableCustomer$customerDisable<TRes> {
  _CopyWithImpl$Mutation$DisableCustomer$customerDisable(
    this._instance,
    this._then,
  );

  final Mutation$DisableCustomer$customerDisable _instance;

  final TRes Function(Mutation$DisableCustomer$customerDisable) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? customer = _undefined,
    Object? userErrors = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$DisableCustomer$customerDisable(
        customer: customer == _undefined
            ? _instance.customer
            : (customer as Mutation$DisableCustomer$customerDisable$customer?),
        userErrors: userErrors == _undefined || userErrors == null
            ? _instance.userErrors
            : (userErrors
                as List<Mutation$DisableCustomer$customerDisable$userErrors>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$DisableCustomer$customerDisable$customer<TRes>
      get customer {
    final local$customer = _instance.customer;
    return local$customer == null
        ? CopyWith$Mutation$DisableCustomer$customerDisable$customer.stub(
            _then(_instance))
        : CopyWith$Mutation$DisableCustomer$customerDisable$customer(
            local$customer, (e) => call(customer: e));
  }

  TRes userErrors(
          Iterable<Mutation$DisableCustomer$customerDisable$userErrors> Function(
                  Iterable<
                      CopyWith$Mutation$DisableCustomer$customerDisable$userErrors<
                          Mutation$DisableCustomer$customerDisable$userErrors>>)
              _fn) =>
      call(
          userErrors: _fn(_instance.userErrors.map((e) =>
              CopyWith$Mutation$DisableCustomer$customerDisable$userErrors(
                e,
                (i) => i,
              ))).toList());
}

class _CopyWithStubImpl$Mutation$DisableCustomer$customerDisable<TRes>
    implements CopyWith$Mutation$DisableCustomer$customerDisable<TRes> {
  _CopyWithStubImpl$Mutation$DisableCustomer$customerDisable(this._res);

  TRes _res;

  call({
    Mutation$DisableCustomer$customerDisable$customer? customer,
    List<Mutation$DisableCustomer$customerDisable$userErrors>? userErrors,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$DisableCustomer$customerDisable$customer<TRes>
      get customer =>
          CopyWith$Mutation$DisableCustomer$customerDisable$customer.stub(_res);

  userErrors(_fn) => _res;
}

class Mutation$DisableCustomer$customerDisable$customer {
  Mutation$DisableCustomer$customerDisable$customer({
    required this.id,
    this.firstName,
    this.lastName,
    this.email,
    this.$__typename = 'Customer',
  });

  factory Mutation$DisableCustomer$customerDisable$customer.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$firstName = json['firstName'];
    final l$lastName = json['lastName'];
    final l$email = json['email'];
    final l$$__typename = json['__typename'];
    return Mutation$DisableCustomer$customerDisable$customer(
      id: (l$id as String),
      firstName: (l$firstName as String?),
      lastName: (l$lastName as String?),
      email: (l$email as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String? firstName;

  final String? lastName;

  final String? email;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$firstName = firstName;
    _resultData['firstName'] = l$firstName;
    final l$lastName = lastName;
    _resultData['lastName'] = l$lastName;
    final l$email = email;
    _resultData['email'] = l$email;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$firstName = firstName;
    final l$lastName = lastName;
    final l$email = email;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$firstName,
      l$lastName,
      l$email,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$DisableCustomer$customerDisable$customer ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$firstName = firstName;
    final lOther$firstName = other.firstName;
    if (l$firstName != lOther$firstName) {
      return false;
    }
    final l$lastName = lastName;
    final lOther$lastName = other.lastName;
    if (l$lastName != lOther$lastName) {
      return false;
    }
    final l$email = email;
    final lOther$email = other.email;
    if (l$email != lOther$email) {
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

extension UtilityExtension$Mutation$DisableCustomer$customerDisable$customer
    on Mutation$DisableCustomer$customerDisable$customer {
  CopyWith$Mutation$DisableCustomer$customerDisable$customer<
          Mutation$DisableCustomer$customerDisable$customer>
      get copyWith =>
          CopyWith$Mutation$DisableCustomer$customerDisable$customer(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$DisableCustomer$customerDisable$customer<
    TRes> {
  factory CopyWith$Mutation$DisableCustomer$customerDisable$customer(
    Mutation$DisableCustomer$customerDisable$customer instance,
    TRes Function(Mutation$DisableCustomer$customerDisable$customer) then,
  ) = _CopyWithImpl$Mutation$DisableCustomer$customerDisable$customer;

  factory CopyWith$Mutation$DisableCustomer$customerDisable$customer.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$DisableCustomer$customerDisable$customer;

  TRes call({
    String? id,
    String? firstName,
    String? lastName,
    String? email,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$DisableCustomer$customerDisable$customer<TRes>
    implements
        CopyWith$Mutation$DisableCustomer$customerDisable$customer<TRes> {
  _CopyWithImpl$Mutation$DisableCustomer$customerDisable$customer(
    this._instance,
    this._then,
  );

  final Mutation$DisableCustomer$customerDisable$customer _instance;

  final TRes Function(Mutation$DisableCustomer$customerDisable$customer) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? firstName = _undefined,
    Object? lastName = _undefined,
    Object? email = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$DisableCustomer$customerDisable$customer(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        firstName: firstName == _undefined
            ? _instance.firstName
            : (firstName as String?),
        lastName:
            lastName == _undefined ? _instance.lastName : (lastName as String?),
        email: email == _undefined ? _instance.email : (email as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$DisableCustomer$customerDisable$customer<TRes>
    implements
        CopyWith$Mutation$DisableCustomer$customerDisable$customer<TRes> {
  _CopyWithStubImpl$Mutation$DisableCustomer$customerDisable$customer(
      this._res);

  TRes _res;

  call({
    String? id,
    String? firstName,
    String? lastName,
    String? email,
    String? $__typename,
  }) =>
      _res;
}

class Mutation$DisableCustomer$customerDisable$userErrors {
  Mutation$DisableCustomer$customerDisable$userErrors({
    this.field,
    required this.message,
    this.$__typename = 'UserError',
  });

  factory Mutation$DisableCustomer$customerDisable$userErrors.fromJson(
      Map<String, dynamic> json) {
    final l$field = json['field'];
    final l$message = json['message'];
    final l$$__typename = json['__typename'];
    return Mutation$DisableCustomer$customerDisable$userErrors(
      field: (l$field as List<dynamic>?)?.map((e) => (e as String)).toList(),
      message: (l$message as String),
      $__typename: (l$$__typename as String),
    );
  }

  final List<String>? field;

  final String message;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$field = field;
    _resultData['field'] = l$field?.map((e) => e).toList();
    final l$message = message;
    _resultData['message'] = l$message;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$field = field;
    final l$message = message;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$field == null ? null : Object.hashAll(l$field.map((v) => v)),
      l$message,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$DisableCustomer$customerDisable$userErrors ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$field = field;
    final lOther$field = other.field;
    if (l$field != null && lOther$field != null) {
      if (l$field.length != lOther$field.length) {
        return false;
      }
      for (int i = 0; i < l$field.length; i++) {
        final l$field$entry = l$field[i];
        final lOther$field$entry = lOther$field[i];
        if (l$field$entry != lOther$field$entry) {
          return false;
        }
      }
    } else if (l$field != lOther$field) {
      return false;
    }
    final l$message = message;
    final lOther$message = other.message;
    if (l$message != lOther$message) {
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

extension UtilityExtension$Mutation$DisableCustomer$customerDisable$userErrors
    on Mutation$DisableCustomer$customerDisable$userErrors {
  CopyWith$Mutation$DisableCustomer$customerDisable$userErrors<
          Mutation$DisableCustomer$customerDisable$userErrors>
      get copyWith =>
          CopyWith$Mutation$DisableCustomer$customerDisable$userErrors(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$DisableCustomer$customerDisable$userErrors<
    TRes> {
  factory CopyWith$Mutation$DisableCustomer$customerDisable$userErrors(
    Mutation$DisableCustomer$customerDisable$userErrors instance,
    TRes Function(Mutation$DisableCustomer$customerDisable$userErrors) then,
  ) = _CopyWithImpl$Mutation$DisableCustomer$customerDisable$userErrors;

  factory CopyWith$Mutation$DisableCustomer$customerDisable$userErrors.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$DisableCustomer$customerDisable$userErrors;

  TRes call({
    List<String>? field,
    String? message,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$DisableCustomer$customerDisable$userErrors<TRes>
    implements
        CopyWith$Mutation$DisableCustomer$customerDisable$userErrors<TRes> {
  _CopyWithImpl$Mutation$DisableCustomer$customerDisable$userErrors(
    this._instance,
    this._then,
  );

  final Mutation$DisableCustomer$customerDisable$userErrors _instance;

  final TRes Function(Mutation$DisableCustomer$customerDisable$userErrors)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? field = _undefined,
    Object? message = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$DisableCustomer$customerDisable$userErrors(
        field: field == _undefined ? _instance.field : (field as List<String>?),
        message: message == _undefined || message == null
            ? _instance.message
            : (message as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$DisableCustomer$customerDisable$userErrors<
        TRes>
    implements
        CopyWith$Mutation$DisableCustomer$customerDisable$userErrors<TRes> {
  _CopyWithStubImpl$Mutation$DisableCustomer$customerDisable$userErrors(
      this._res);

  TRes _res;

  call({
    List<String>? field,
    String? message,
    String? $__typename,
  }) =>
      _res;
}
