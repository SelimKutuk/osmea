import '../../../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Query$Customer {
  factory Variables$Query$Customer({required String id}) =>
      Variables$Query$Customer._({
        r'id': id,
      });

  Variables$Query$Customer._(this._$data);

  factory Variables$Query$Customer.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    return Variables$Query$Customer._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    return result$data;
  }

  CopyWith$Variables$Query$Customer<Variables$Query$Customer> get copyWith =>
      CopyWith$Variables$Query$Customer(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$Customer ||
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

abstract class CopyWith$Variables$Query$Customer<TRes> {
  factory CopyWith$Variables$Query$Customer(
    Variables$Query$Customer instance,
    TRes Function(Variables$Query$Customer) then,
  ) = _CopyWithImpl$Variables$Query$Customer;

  factory CopyWith$Variables$Query$Customer.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$Customer;

  TRes call({String? id});
}

class _CopyWithImpl$Variables$Query$Customer<TRes>
    implements CopyWith$Variables$Query$Customer<TRes> {
  _CopyWithImpl$Variables$Query$Customer(
    this._instance,
    this._then,
  );

  final Variables$Query$Customer _instance;

  final TRes Function(Variables$Query$Customer) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) => _then(Variables$Query$Customer._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as String),
      }));
}

class _CopyWithStubImpl$Variables$Query$Customer<TRes>
    implements CopyWith$Variables$Query$Customer<TRes> {
  _CopyWithStubImpl$Variables$Query$Customer(this._res);

  TRes _res;

  call({String? id}) => _res;
}

class Query$Customer {
  Query$Customer({
    this.customer,
    this.$__typename = 'Query',
  });

  factory Query$Customer.fromJson(Map<String, dynamic> json) {
    final l$customer = json['customer'];
    final l$$__typename = json['__typename'];
    return Query$Customer(
      customer: l$customer == null
          ? null
          : Query$Customer$customer.fromJson(
              (l$customer as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$Customer$customer? customer;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$customer = customer;
    _resultData['customer'] = l$customer?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$customer = customer;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$customer,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$Customer || runtimeType != other.runtimeType) {
      return false;
    }
    final l$customer = customer;
    final lOther$customer = other.customer;
    if (l$customer != lOther$customer) {
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

extension UtilityExtension$Query$Customer on Query$Customer {
  CopyWith$Query$Customer<Query$Customer> get copyWith =>
      CopyWith$Query$Customer(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Customer<TRes> {
  factory CopyWith$Query$Customer(
    Query$Customer instance,
    TRes Function(Query$Customer) then,
  ) = _CopyWithImpl$Query$Customer;

  factory CopyWith$Query$Customer.stub(TRes res) =
      _CopyWithStubImpl$Query$Customer;

  TRes call({
    Query$Customer$customer? customer,
    String? $__typename,
  });
  CopyWith$Query$Customer$customer<TRes> get customer;
}

class _CopyWithImpl$Query$Customer<TRes>
    implements CopyWith$Query$Customer<TRes> {
  _CopyWithImpl$Query$Customer(
    this._instance,
    this._then,
  );

  final Query$Customer _instance;

  final TRes Function(Query$Customer) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? customer = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Customer(
        customer: customer == _undefined
            ? _instance.customer
            : (customer as Query$Customer$customer?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$Customer$customer<TRes> get customer {
    final local$customer = _instance.customer;
    return local$customer == null
        ? CopyWith$Query$Customer$customer.stub(_then(_instance))
        : CopyWith$Query$Customer$customer(
            local$customer, (e) => call(customer: e));
  }
}

class _CopyWithStubImpl$Query$Customer<TRes>
    implements CopyWith$Query$Customer<TRes> {
  _CopyWithStubImpl$Query$Customer(this._res);

  TRes _res;

  call({
    Query$Customer$customer? customer,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$Customer$customer<TRes> get customer =>
      CopyWith$Query$Customer$customer.stub(_res);
}

const documentNodeQueryCustomer = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'Customer'),
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
        name: NameNode(value: 'customer'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'id'),
            value: VariableNode(name: NameNode(value: 'id')),
          )
        ],
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
            name: NameNode(value: 'phone'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'createdAt'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'updatedAt'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'acceptsMarketing'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'emailMarketingConsent'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'marketingState'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'marketingOptInLevel'),
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
            name: NameNode(value: 'addresses'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'first'),
                value: IntValueNode(value: '20'),
              )
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
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
                        name: NameNode(value: 'address1'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'address2'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'city'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'province'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'country'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'zip'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'phone'),
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
            name: NameNode(value: 'orders'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'first'),
                value: IntValueNode(value: '50'),
              )
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
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
                        name: NameNode(value: 'name'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'totalPrice'),
                        alias: NameNode(value: 'totalPrice'),
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'createdAt'),
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

class Query$Customer$customer {
  Query$Customer$customer({
    required this.id,
    this.firstName,
    this.lastName,
    this.email,
    this.phone,
    required this.createdAt,
    required this.updatedAt,
    this.acceptsMarketing,
    this.emailMarketingConsent,
    required this.addresses,
    required this.orders,
    this.$__typename = 'Customer',
  });

  factory Query$Customer$customer.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$firstName = json['firstName'];
    final l$lastName = json['lastName'];
    final l$email = json['email'];
    final l$phone = json['phone'];
    final l$createdAt = json['createdAt'];
    final l$updatedAt = json['updatedAt'];
    final l$acceptsMarketing = json['acceptsMarketing'];
    final l$emailMarketingConsent = json['emailMarketingConsent'];
    final l$addresses = json['addresses'];
    final l$orders = json['orders'];
    final l$$__typename = json['__typename'];
    return Query$Customer$customer(
      id: (l$id as String),
      firstName: (l$firstName as String?),
      lastName: (l$lastName as String?),
      email: (l$email as String?),
      phone: (l$phone as String?),
      createdAt: (l$createdAt as String),
      updatedAt: (l$updatedAt as String),
      acceptsMarketing: (l$acceptsMarketing as bool?),
      emailMarketingConsent: l$emailMarketingConsent == null
          ? null
          : Query$Customer$customer$emailMarketingConsent.fromJson(
              (l$emailMarketingConsent as Map<String, dynamic>)),
      addresses: Query$Customer$customer$addresses.fromJson(
          (l$addresses as Map<String, dynamic>)),
      orders: Query$Customer$customer$orders.fromJson(
          (l$orders as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String? firstName;

  final String? lastName;

  final String? email;

  final String? phone;

  final String createdAt;

  final String updatedAt;

  final bool? acceptsMarketing;

  final Query$Customer$customer$emailMarketingConsent? emailMarketingConsent;

  final Query$Customer$customer$addresses addresses;

  final Query$Customer$customer$orders orders;

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
    final l$phone = phone;
    _resultData['phone'] = l$phone;
    final l$createdAt = createdAt;
    _resultData['createdAt'] = l$createdAt;
    final l$updatedAt = updatedAt;
    _resultData['updatedAt'] = l$updatedAt;
    final l$acceptsMarketing = acceptsMarketing;
    _resultData['acceptsMarketing'] = l$acceptsMarketing;
    final l$emailMarketingConsent = emailMarketingConsent;
    _resultData['emailMarketingConsent'] = l$emailMarketingConsent?.toJson();
    final l$addresses = addresses;
    _resultData['addresses'] = l$addresses.toJson();
    final l$orders = orders;
    _resultData['orders'] = l$orders.toJson();
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
    final l$phone = phone;
    final l$createdAt = createdAt;
    final l$updatedAt = updatedAt;
    final l$acceptsMarketing = acceptsMarketing;
    final l$emailMarketingConsent = emailMarketingConsent;
    final l$addresses = addresses;
    final l$orders = orders;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$firstName,
      l$lastName,
      l$email,
      l$phone,
      l$createdAt,
      l$updatedAt,
      l$acceptsMarketing,
      l$emailMarketingConsent,
      l$addresses,
      l$orders,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$Customer$customer || runtimeType != other.runtimeType) {
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
    final l$phone = phone;
    final lOther$phone = other.phone;
    if (l$phone != lOther$phone) {
      return false;
    }
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (l$createdAt != lOther$createdAt) {
      return false;
    }
    final l$updatedAt = updatedAt;
    final lOther$updatedAt = other.updatedAt;
    if (l$updatedAt != lOther$updatedAt) {
      return false;
    }
    final l$acceptsMarketing = acceptsMarketing;
    final lOther$acceptsMarketing = other.acceptsMarketing;
    if (l$acceptsMarketing != lOther$acceptsMarketing) {
      return false;
    }
    final l$emailMarketingConsent = emailMarketingConsent;
    final lOther$emailMarketingConsent = other.emailMarketingConsent;
    if (l$emailMarketingConsent != lOther$emailMarketingConsent) {
      return false;
    }
    final l$addresses = addresses;
    final lOther$addresses = other.addresses;
    if (l$addresses != lOther$addresses) {
      return false;
    }
    final l$orders = orders;
    final lOther$orders = other.orders;
    if (l$orders != lOther$orders) {
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

extension UtilityExtension$Query$Customer$customer on Query$Customer$customer {
  CopyWith$Query$Customer$customer<Query$Customer$customer> get copyWith =>
      CopyWith$Query$Customer$customer(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Customer$customer<TRes> {
  factory CopyWith$Query$Customer$customer(
    Query$Customer$customer instance,
    TRes Function(Query$Customer$customer) then,
  ) = _CopyWithImpl$Query$Customer$customer;

  factory CopyWith$Query$Customer$customer.stub(TRes res) =
      _CopyWithStubImpl$Query$Customer$customer;

  TRes call({
    String? id,
    String? firstName,
    String? lastName,
    String? email,
    String? phone,
    String? createdAt,
    String? updatedAt,
    bool? acceptsMarketing,
    Query$Customer$customer$emailMarketingConsent? emailMarketingConsent,
    Query$Customer$customer$addresses? addresses,
    Query$Customer$customer$orders? orders,
    String? $__typename,
  });
  CopyWith$Query$Customer$customer$emailMarketingConsent<TRes>
      get emailMarketingConsent;
  CopyWith$Query$Customer$customer$addresses<TRes> get addresses;
  CopyWith$Query$Customer$customer$orders<TRes> get orders;
}

class _CopyWithImpl$Query$Customer$customer<TRes>
    implements CopyWith$Query$Customer$customer<TRes> {
  _CopyWithImpl$Query$Customer$customer(
    this._instance,
    this._then,
  );

  final Query$Customer$customer _instance;

  final TRes Function(Query$Customer$customer) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? firstName = _undefined,
    Object? lastName = _undefined,
    Object? email = _undefined,
    Object? phone = _undefined,
    Object? createdAt = _undefined,
    Object? updatedAt = _undefined,
    Object? acceptsMarketing = _undefined,
    Object? emailMarketingConsent = _undefined,
    Object? addresses = _undefined,
    Object? orders = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Customer$customer(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        firstName: firstName == _undefined
            ? _instance.firstName
            : (firstName as String?),
        lastName:
            lastName == _undefined ? _instance.lastName : (lastName as String?),
        email: email == _undefined ? _instance.email : (email as String?),
        phone: phone == _undefined ? _instance.phone : (phone as String?),
        createdAt: createdAt == _undefined || createdAt == null
            ? _instance.createdAt
            : (createdAt as String),
        updatedAt: updatedAt == _undefined || updatedAt == null
            ? _instance.updatedAt
            : (updatedAt as String),
        acceptsMarketing: acceptsMarketing == _undefined
            ? _instance.acceptsMarketing
            : (acceptsMarketing as bool?),
        emailMarketingConsent: emailMarketingConsent == _undefined
            ? _instance.emailMarketingConsent
            : (emailMarketingConsent
                as Query$Customer$customer$emailMarketingConsent?),
        addresses: addresses == _undefined || addresses == null
            ? _instance.addresses
            : (addresses as Query$Customer$customer$addresses),
        orders: orders == _undefined || orders == null
            ? _instance.orders
            : (orders as Query$Customer$customer$orders),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$Customer$customer$emailMarketingConsent<TRes>
      get emailMarketingConsent {
    final local$emailMarketingConsent = _instance.emailMarketingConsent;
    return local$emailMarketingConsent == null
        ? CopyWith$Query$Customer$customer$emailMarketingConsent.stub(
            _then(_instance))
        : CopyWith$Query$Customer$customer$emailMarketingConsent(
            local$emailMarketingConsent, (e) => call(emailMarketingConsent: e));
  }

  CopyWith$Query$Customer$customer$addresses<TRes> get addresses {
    final local$addresses = _instance.addresses;
    return CopyWith$Query$Customer$customer$addresses(
        local$addresses, (e) => call(addresses: e));
  }

  CopyWith$Query$Customer$customer$orders<TRes> get orders {
    final local$orders = _instance.orders;
    return CopyWith$Query$Customer$customer$orders(
        local$orders, (e) => call(orders: e));
  }
}

class _CopyWithStubImpl$Query$Customer$customer<TRes>
    implements CopyWith$Query$Customer$customer<TRes> {
  _CopyWithStubImpl$Query$Customer$customer(this._res);

  TRes _res;

  call({
    String? id,
    String? firstName,
    String? lastName,
    String? email,
    String? phone,
    String? createdAt,
    String? updatedAt,
    bool? acceptsMarketing,
    Query$Customer$customer$emailMarketingConsent? emailMarketingConsent,
    Query$Customer$customer$addresses? addresses,
    Query$Customer$customer$orders? orders,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$Customer$customer$emailMarketingConsent<TRes>
      get emailMarketingConsent =>
          CopyWith$Query$Customer$customer$emailMarketingConsent.stub(_res);

  CopyWith$Query$Customer$customer$addresses<TRes> get addresses =>
      CopyWith$Query$Customer$customer$addresses.stub(_res);

  CopyWith$Query$Customer$customer$orders<TRes> get orders =>
      CopyWith$Query$Customer$customer$orders.stub(_res);
}

class Query$Customer$customer$emailMarketingConsent {
  Query$Customer$customer$emailMarketingConsent({
    required this.marketingState,
    required this.marketingOptInLevel,
    this.$__typename = 'EmailMarketingConsent',
  });

  factory Query$Customer$customer$emailMarketingConsent.fromJson(
      Map<String, dynamic> json) {
    final l$marketingState = json['marketingState'];
    final l$marketingOptInLevel = json['marketingOptInLevel'];
    final l$$__typename = json['__typename'];
    return Query$Customer$customer$emailMarketingConsent(
      marketingState: fromJson$Enum$EmailMarketingConsentState(
          (l$marketingState as String)),
      marketingOptInLevel: fromJson$Enum$EmailMarketingConsentOptInLevel(
          (l$marketingOptInLevel as String)),
      $__typename: (l$$__typename as String),
    );
  }

  final Enum$EmailMarketingConsentState marketingState;

  final Enum$EmailMarketingConsentOptInLevel marketingOptInLevel;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$marketingState = marketingState;
    _resultData['marketingState'] =
        toJson$Enum$EmailMarketingConsentState(l$marketingState);
    final l$marketingOptInLevel = marketingOptInLevel;
    _resultData['marketingOptInLevel'] =
        toJson$Enum$EmailMarketingConsentOptInLevel(l$marketingOptInLevel);
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$marketingState = marketingState;
    final l$marketingOptInLevel = marketingOptInLevel;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$marketingState,
      l$marketingOptInLevel,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$Customer$customer$emailMarketingConsent ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$marketingState = marketingState;
    final lOther$marketingState = other.marketingState;
    if (l$marketingState != lOther$marketingState) {
      return false;
    }
    final l$marketingOptInLevel = marketingOptInLevel;
    final lOther$marketingOptInLevel = other.marketingOptInLevel;
    if (l$marketingOptInLevel != lOther$marketingOptInLevel) {
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

extension UtilityExtension$Query$Customer$customer$emailMarketingConsent
    on Query$Customer$customer$emailMarketingConsent {
  CopyWith$Query$Customer$customer$emailMarketingConsent<
          Query$Customer$customer$emailMarketingConsent>
      get copyWith => CopyWith$Query$Customer$customer$emailMarketingConsent(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Customer$customer$emailMarketingConsent<TRes> {
  factory CopyWith$Query$Customer$customer$emailMarketingConsent(
    Query$Customer$customer$emailMarketingConsent instance,
    TRes Function(Query$Customer$customer$emailMarketingConsent) then,
  ) = _CopyWithImpl$Query$Customer$customer$emailMarketingConsent;

  factory CopyWith$Query$Customer$customer$emailMarketingConsent.stub(
          TRes res) =
      _CopyWithStubImpl$Query$Customer$customer$emailMarketingConsent;

  TRes call({
    Enum$EmailMarketingConsentState? marketingState,
    Enum$EmailMarketingConsentOptInLevel? marketingOptInLevel,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$Customer$customer$emailMarketingConsent<TRes>
    implements CopyWith$Query$Customer$customer$emailMarketingConsent<TRes> {
  _CopyWithImpl$Query$Customer$customer$emailMarketingConsent(
    this._instance,
    this._then,
  );

  final Query$Customer$customer$emailMarketingConsent _instance;

  final TRes Function(Query$Customer$customer$emailMarketingConsent) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? marketingState = _undefined,
    Object? marketingOptInLevel = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Customer$customer$emailMarketingConsent(
        marketingState: marketingState == _undefined || marketingState == null
            ? _instance.marketingState
            : (marketingState as Enum$EmailMarketingConsentState),
        marketingOptInLevel:
            marketingOptInLevel == _undefined || marketingOptInLevel == null
                ? _instance.marketingOptInLevel
                : (marketingOptInLevel as Enum$EmailMarketingConsentOptInLevel),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$Customer$customer$emailMarketingConsent<TRes>
    implements CopyWith$Query$Customer$customer$emailMarketingConsent<TRes> {
  _CopyWithStubImpl$Query$Customer$customer$emailMarketingConsent(this._res);

  TRes _res;

  call({
    Enum$EmailMarketingConsentState? marketingState,
    Enum$EmailMarketingConsentOptInLevel? marketingOptInLevel,
    String? $__typename,
  }) =>
      _res;
}

class Query$Customer$customer$addresses {
  Query$Customer$customer$addresses({
    required this.edges,
    this.$__typename = 'CustomerAddressConnection',
  });

  factory Query$Customer$customer$addresses.fromJson(
      Map<String, dynamic> json) {
    final l$edges = json['edges'];
    final l$$__typename = json['__typename'];
    return Query$Customer$customer$addresses(
      edges: (l$edges as List<dynamic>)
          .map((e) => Query$Customer$customer$addresses$edges.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$Customer$customer$addresses$edges> edges;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$edges = edges;
    _resultData['edges'] = l$edges.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$edges = edges;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$edges.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$Customer$customer$addresses ||
        runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$Customer$customer$addresses
    on Query$Customer$customer$addresses {
  CopyWith$Query$Customer$customer$addresses<Query$Customer$customer$addresses>
      get copyWith => CopyWith$Query$Customer$customer$addresses(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Customer$customer$addresses<TRes> {
  factory CopyWith$Query$Customer$customer$addresses(
    Query$Customer$customer$addresses instance,
    TRes Function(Query$Customer$customer$addresses) then,
  ) = _CopyWithImpl$Query$Customer$customer$addresses;

  factory CopyWith$Query$Customer$customer$addresses.stub(TRes res) =
      _CopyWithStubImpl$Query$Customer$customer$addresses;

  TRes call({
    List<Query$Customer$customer$addresses$edges>? edges,
    String? $__typename,
  });
  TRes edges(
      Iterable<Query$Customer$customer$addresses$edges> Function(
              Iterable<
                  CopyWith$Query$Customer$customer$addresses$edges<
                      Query$Customer$customer$addresses$edges>>)
          _fn);
}

class _CopyWithImpl$Query$Customer$customer$addresses<TRes>
    implements CopyWith$Query$Customer$customer$addresses<TRes> {
  _CopyWithImpl$Query$Customer$customer$addresses(
    this._instance,
    this._then,
  );

  final Query$Customer$customer$addresses _instance;

  final TRes Function(Query$Customer$customer$addresses) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? edges = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Customer$customer$addresses(
        edges: edges == _undefined || edges == null
            ? _instance.edges
            : (edges as List<Query$Customer$customer$addresses$edges>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes edges(
          Iterable<Query$Customer$customer$addresses$edges> Function(
                  Iterable<
                      CopyWith$Query$Customer$customer$addresses$edges<
                          Query$Customer$customer$addresses$edges>>)
              _fn) =>
      call(
          edges: _fn(_instance.edges
              .map((e) => CopyWith$Query$Customer$customer$addresses$edges(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$Customer$customer$addresses<TRes>
    implements CopyWith$Query$Customer$customer$addresses<TRes> {
  _CopyWithStubImpl$Query$Customer$customer$addresses(this._res);

  TRes _res;

  call({
    List<Query$Customer$customer$addresses$edges>? edges,
    String? $__typename,
  }) =>
      _res;

  edges(_fn) => _res;
}

class Query$Customer$customer$addresses$edges {
  Query$Customer$customer$addresses$edges({
    required this.node,
    this.$__typename = 'CustomerAddressEdge',
  });

  factory Query$Customer$customer$addresses$edges.fromJson(
      Map<String, dynamic> json) {
    final l$node = json['node'];
    final l$$__typename = json['__typename'];
    return Query$Customer$customer$addresses$edges(
      node: Query$Customer$customer$addresses$edges$node.fromJson(
          (l$node as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$Customer$customer$addresses$edges$node node;

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
    if (other is! Query$Customer$customer$addresses$edges ||
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

extension UtilityExtension$Query$Customer$customer$addresses$edges
    on Query$Customer$customer$addresses$edges {
  CopyWith$Query$Customer$customer$addresses$edges<
          Query$Customer$customer$addresses$edges>
      get copyWith => CopyWith$Query$Customer$customer$addresses$edges(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Customer$customer$addresses$edges<TRes> {
  factory CopyWith$Query$Customer$customer$addresses$edges(
    Query$Customer$customer$addresses$edges instance,
    TRes Function(Query$Customer$customer$addresses$edges) then,
  ) = _CopyWithImpl$Query$Customer$customer$addresses$edges;

  factory CopyWith$Query$Customer$customer$addresses$edges.stub(TRes res) =
      _CopyWithStubImpl$Query$Customer$customer$addresses$edges;

  TRes call({
    Query$Customer$customer$addresses$edges$node? node,
    String? $__typename,
  });
  CopyWith$Query$Customer$customer$addresses$edges$node<TRes> get node;
}

class _CopyWithImpl$Query$Customer$customer$addresses$edges<TRes>
    implements CopyWith$Query$Customer$customer$addresses$edges<TRes> {
  _CopyWithImpl$Query$Customer$customer$addresses$edges(
    this._instance,
    this._then,
  );

  final Query$Customer$customer$addresses$edges _instance;

  final TRes Function(Query$Customer$customer$addresses$edges) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? node = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Customer$customer$addresses$edges(
        node: node == _undefined || node == null
            ? _instance.node
            : (node as Query$Customer$customer$addresses$edges$node),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$Customer$customer$addresses$edges$node<TRes> get node {
    final local$node = _instance.node;
    return CopyWith$Query$Customer$customer$addresses$edges$node(
        local$node, (e) => call(node: e));
  }
}

class _CopyWithStubImpl$Query$Customer$customer$addresses$edges<TRes>
    implements CopyWith$Query$Customer$customer$addresses$edges<TRes> {
  _CopyWithStubImpl$Query$Customer$customer$addresses$edges(this._res);

  TRes _res;

  call({
    Query$Customer$customer$addresses$edges$node? node,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$Customer$customer$addresses$edges$node<TRes> get node =>
      CopyWith$Query$Customer$customer$addresses$edges$node.stub(_res);
}

class Query$Customer$customer$addresses$edges$node {
  Query$Customer$customer$addresses$edges$node({
    required this.id,
    this.address1,
    this.address2,
    this.city,
    this.province,
    this.country,
    this.zip,
    this.phone,
    this.$__typename = 'CustomerAddress',
  });

  factory Query$Customer$customer$addresses$edges$node.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$address1 = json['address1'];
    final l$address2 = json['address2'];
    final l$city = json['city'];
    final l$province = json['province'];
    final l$country = json['country'];
    final l$zip = json['zip'];
    final l$phone = json['phone'];
    final l$$__typename = json['__typename'];
    return Query$Customer$customer$addresses$edges$node(
      id: (l$id as String),
      address1: (l$address1 as String?),
      address2: (l$address2 as String?),
      city: (l$city as String?),
      province: (l$province as String?),
      country: (l$country as String?),
      zip: (l$zip as String?),
      phone: (l$phone as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String? address1;

  final String? address2;

  final String? city;

  final String? province;

  final String? country;

  final String? zip;

  final String? phone;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$address1 = address1;
    _resultData['address1'] = l$address1;
    final l$address2 = address2;
    _resultData['address2'] = l$address2;
    final l$city = city;
    _resultData['city'] = l$city;
    final l$province = province;
    _resultData['province'] = l$province;
    final l$country = country;
    _resultData['country'] = l$country;
    final l$zip = zip;
    _resultData['zip'] = l$zip;
    final l$phone = phone;
    _resultData['phone'] = l$phone;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$address1 = address1;
    final l$address2 = address2;
    final l$city = city;
    final l$province = province;
    final l$country = country;
    final l$zip = zip;
    final l$phone = phone;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$address1,
      l$address2,
      l$city,
      l$province,
      l$country,
      l$zip,
      l$phone,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$Customer$customer$addresses$edges$node ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$address1 = address1;
    final lOther$address1 = other.address1;
    if (l$address1 != lOther$address1) {
      return false;
    }
    final l$address2 = address2;
    final lOther$address2 = other.address2;
    if (l$address2 != lOther$address2) {
      return false;
    }
    final l$city = city;
    final lOther$city = other.city;
    if (l$city != lOther$city) {
      return false;
    }
    final l$province = province;
    final lOther$province = other.province;
    if (l$province != lOther$province) {
      return false;
    }
    final l$country = country;
    final lOther$country = other.country;
    if (l$country != lOther$country) {
      return false;
    }
    final l$zip = zip;
    final lOther$zip = other.zip;
    if (l$zip != lOther$zip) {
      return false;
    }
    final l$phone = phone;
    final lOther$phone = other.phone;
    if (l$phone != lOther$phone) {
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

extension UtilityExtension$Query$Customer$customer$addresses$edges$node
    on Query$Customer$customer$addresses$edges$node {
  CopyWith$Query$Customer$customer$addresses$edges$node<
          Query$Customer$customer$addresses$edges$node>
      get copyWith => CopyWith$Query$Customer$customer$addresses$edges$node(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Customer$customer$addresses$edges$node<TRes> {
  factory CopyWith$Query$Customer$customer$addresses$edges$node(
    Query$Customer$customer$addresses$edges$node instance,
    TRes Function(Query$Customer$customer$addresses$edges$node) then,
  ) = _CopyWithImpl$Query$Customer$customer$addresses$edges$node;

  factory CopyWith$Query$Customer$customer$addresses$edges$node.stub(TRes res) =
      _CopyWithStubImpl$Query$Customer$customer$addresses$edges$node;

  TRes call({
    String? id,
    String? address1,
    String? address2,
    String? city,
    String? province,
    String? country,
    String? zip,
    String? phone,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$Customer$customer$addresses$edges$node<TRes>
    implements CopyWith$Query$Customer$customer$addresses$edges$node<TRes> {
  _CopyWithImpl$Query$Customer$customer$addresses$edges$node(
    this._instance,
    this._then,
  );

  final Query$Customer$customer$addresses$edges$node _instance;

  final TRes Function(Query$Customer$customer$addresses$edges$node) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? address1 = _undefined,
    Object? address2 = _undefined,
    Object? city = _undefined,
    Object? province = _undefined,
    Object? country = _undefined,
    Object? zip = _undefined,
    Object? phone = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Customer$customer$addresses$edges$node(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        address1:
            address1 == _undefined ? _instance.address1 : (address1 as String?),
        address2:
            address2 == _undefined ? _instance.address2 : (address2 as String?),
        city: city == _undefined ? _instance.city : (city as String?),
        province:
            province == _undefined ? _instance.province : (province as String?),
        country:
            country == _undefined ? _instance.country : (country as String?),
        zip: zip == _undefined ? _instance.zip : (zip as String?),
        phone: phone == _undefined ? _instance.phone : (phone as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$Customer$customer$addresses$edges$node<TRes>
    implements CopyWith$Query$Customer$customer$addresses$edges$node<TRes> {
  _CopyWithStubImpl$Query$Customer$customer$addresses$edges$node(this._res);

  TRes _res;

  call({
    String? id,
    String? address1,
    String? address2,
    String? city,
    String? province,
    String? country,
    String? zip,
    String? phone,
    String? $__typename,
  }) =>
      _res;
}

class Query$Customer$customer$orders {
  Query$Customer$customer$orders({
    required this.edges,
    this.$__typename = 'OrderConnection',
  });

  factory Query$Customer$customer$orders.fromJson(Map<String, dynamic> json) {
    final l$edges = json['edges'];
    final l$$__typename = json['__typename'];
    return Query$Customer$customer$orders(
      edges: (l$edges as List<dynamic>)
          .map((e) => Query$Customer$customer$orders$edges.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$Customer$customer$orders$edges> edges;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$edges = edges;
    _resultData['edges'] = l$edges.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$edges = edges;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$edges.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$Customer$customer$orders ||
        runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$Customer$customer$orders
    on Query$Customer$customer$orders {
  CopyWith$Query$Customer$customer$orders<Query$Customer$customer$orders>
      get copyWith => CopyWith$Query$Customer$customer$orders(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Customer$customer$orders<TRes> {
  factory CopyWith$Query$Customer$customer$orders(
    Query$Customer$customer$orders instance,
    TRes Function(Query$Customer$customer$orders) then,
  ) = _CopyWithImpl$Query$Customer$customer$orders;

  factory CopyWith$Query$Customer$customer$orders.stub(TRes res) =
      _CopyWithStubImpl$Query$Customer$customer$orders;

  TRes call({
    List<Query$Customer$customer$orders$edges>? edges,
    String? $__typename,
  });
  TRes edges(
      Iterable<Query$Customer$customer$orders$edges> Function(
              Iterable<
                  CopyWith$Query$Customer$customer$orders$edges<
                      Query$Customer$customer$orders$edges>>)
          _fn);
}

class _CopyWithImpl$Query$Customer$customer$orders<TRes>
    implements CopyWith$Query$Customer$customer$orders<TRes> {
  _CopyWithImpl$Query$Customer$customer$orders(
    this._instance,
    this._then,
  );

  final Query$Customer$customer$orders _instance;

  final TRes Function(Query$Customer$customer$orders) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? edges = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Customer$customer$orders(
        edges: edges == _undefined || edges == null
            ? _instance.edges
            : (edges as List<Query$Customer$customer$orders$edges>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes edges(
          Iterable<Query$Customer$customer$orders$edges> Function(
                  Iterable<
                      CopyWith$Query$Customer$customer$orders$edges<
                          Query$Customer$customer$orders$edges>>)
              _fn) =>
      call(
          edges: _fn(_instance.edges
              .map((e) => CopyWith$Query$Customer$customer$orders$edges(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$Customer$customer$orders<TRes>
    implements CopyWith$Query$Customer$customer$orders<TRes> {
  _CopyWithStubImpl$Query$Customer$customer$orders(this._res);

  TRes _res;

  call({
    List<Query$Customer$customer$orders$edges>? edges,
    String? $__typename,
  }) =>
      _res;

  edges(_fn) => _res;
}

class Query$Customer$customer$orders$edges {
  Query$Customer$customer$orders$edges({
    required this.node,
    this.$__typename = 'OrderEdge',
  });

  factory Query$Customer$customer$orders$edges.fromJson(
      Map<String, dynamic> json) {
    final l$node = json['node'];
    final l$$__typename = json['__typename'];
    return Query$Customer$customer$orders$edges(
      node: Query$Customer$customer$orders$edges$node.fromJson(
          (l$node as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$Customer$customer$orders$edges$node node;

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
    if (other is! Query$Customer$customer$orders$edges ||
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

extension UtilityExtension$Query$Customer$customer$orders$edges
    on Query$Customer$customer$orders$edges {
  CopyWith$Query$Customer$customer$orders$edges<
          Query$Customer$customer$orders$edges>
      get copyWith => CopyWith$Query$Customer$customer$orders$edges(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Customer$customer$orders$edges<TRes> {
  factory CopyWith$Query$Customer$customer$orders$edges(
    Query$Customer$customer$orders$edges instance,
    TRes Function(Query$Customer$customer$orders$edges) then,
  ) = _CopyWithImpl$Query$Customer$customer$orders$edges;

  factory CopyWith$Query$Customer$customer$orders$edges.stub(TRes res) =
      _CopyWithStubImpl$Query$Customer$customer$orders$edges;

  TRes call({
    Query$Customer$customer$orders$edges$node? node,
    String? $__typename,
  });
  CopyWith$Query$Customer$customer$orders$edges$node<TRes> get node;
}

class _CopyWithImpl$Query$Customer$customer$orders$edges<TRes>
    implements CopyWith$Query$Customer$customer$orders$edges<TRes> {
  _CopyWithImpl$Query$Customer$customer$orders$edges(
    this._instance,
    this._then,
  );

  final Query$Customer$customer$orders$edges _instance;

  final TRes Function(Query$Customer$customer$orders$edges) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? node = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Customer$customer$orders$edges(
        node: node == _undefined || node == null
            ? _instance.node
            : (node as Query$Customer$customer$orders$edges$node),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$Customer$customer$orders$edges$node<TRes> get node {
    final local$node = _instance.node;
    return CopyWith$Query$Customer$customer$orders$edges$node(
        local$node, (e) => call(node: e));
  }
}

class _CopyWithStubImpl$Query$Customer$customer$orders$edges<TRes>
    implements CopyWith$Query$Customer$customer$orders$edges<TRes> {
  _CopyWithStubImpl$Query$Customer$customer$orders$edges(this._res);

  TRes _res;

  call({
    Query$Customer$customer$orders$edges$node? node,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$Customer$customer$orders$edges$node<TRes> get node =>
      CopyWith$Query$Customer$customer$orders$edges$node.stub(_res);
}

class Query$Customer$customer$orders$edges$node {
  Query$Customer$customer$orders$edges$node({
    required this.id,
    required this.name,
    required this.totalPrice,
    required this.createdAt,
    this.$__typename = 'Order',
  });

  factory Query$Customer$customer$orders$edges$node.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$totalPrice = json['totalPrice'];
    final l$createdAt = json['createdAt'];
    final l$$__typename = json['__typename'];
    return Query$Customer$customer$orders$edges$node(
      id: (l$id as String),
      name: (l$name as String),
      totalPrice: (l$totalPrice as String),
      createdAt: (l$createdAt as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String name;

  final String totalPrice;

  final String createdAt;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$totalPrice = totalPrice;
    _resultData['totalPrice'] = l$totalPrice;
    final l$createdAt = createdAt;
    _resultData['createdAt'] = l$createdAt;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$totalPrice = totalPrice;
    final l$createdAt = createdAt;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$totalPrice,
      l$createdAt,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$Customer$customer$orders$edges$node ||
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
    final l$totalPrice = totalPrice;
    final lOther$totalPrice = other.totalPrice;
    if (l$totalPrice != lOther$totalPrice) {
      return false;
    }
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (l$createdAt != lOther$createdAt) {
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

extension UtilityExtension$Query$Customer$customer$orders$edges$node
    on Query$Customer$customer$orders$edges$node {
  CopyWith$Query$Customer$customer$orders$edges$node<
          Query$Customer$customer$orders$edges$node>
      get copyWith => CopyWith$Query$Customer$customer$orders$edges$node(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Customer$customer$orders$edges$node<TRes> {
  factory CopyWith$Query$Customer$customer$orders$edges$node(
    Query$Customer$customer$orders$edges$node instance,
    TRes Function(Query$Customer$customer$orders$edges$node) then,
  ) = _CopyWithImpl$Query$Customer$customer$orders$edges$node;

  factory CopyWith$Query$Customer$customer$orders$edges$node.stub(TRes res) =
      _CopyWithStubImpl$Query$Customer$customer$orders$edges$node;

  TRes call({
    String? id,
    String? name,
    String? totalPrice,
    String? createdAt,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$Customer$customer$orders$edges$node<TRes>
    implements CopyWith$Query$Customer$customer$orders$edges$node<TRes> {
  _CopyWithImpl$Query$Customer$customer$orders$edges$node(
    this._instance,
    this._then,
  );

  final Query$Customer$customer$orders$edges$node _instance;

  final TRes Function(Query$Customer$customer$orders$edges$node) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? totalPrice = _undefined,
    Object? createdAt = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Customer$customer$orders$edges$node(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        totalPrice: totalPrice == _undefined || totalPrice == null
            ? _instance.totalPrice
            : (totalPrice as String),
        createdAt: createdAt == _undefined || createdAt == null
            ? _instance.createdAt
            : (createdAt as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$Customer$customer$orders$edges$node<TRes>
    implements CopyWith$Query$Customer$customer$orders$edges$node<TRes> {
  _CopyWithStubImpl$Query$Customer$customer$orders$edges$node(this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    String? totalPrice,
    String? createdAt,
    String? $__typename,
  }) =>
      _res;
}
