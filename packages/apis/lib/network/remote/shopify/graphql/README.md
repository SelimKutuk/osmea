# 🚀 Shopify GraphQL API Integration

Bu paket, Shopify Admin API'si ile GraphQL entegrasyonu sağlar. REST API yapısıyla tutarlı bir yaklaşım kullanır ve codegen ile type-safe GraphQL operations sunar.

## 🏗️ Architecture

```
graphql/
├── services/
│   └── base_graphql_service.dart          # Base service for all GraphQL operations
├── products/
│   ├── abstract/
│   │   └── product_graphql_service.dart   # Product operations interface
│   ├── api/
│   │   └── product_graphql_service_impl.dart # Product operations implementation
│   └── graphql_models/
│       ├── mutations/                     # GraphQL mutation files
│       └── queries/                       # GraphQL query files
├── customers/
│   ├── abstract/
│   │   └── customer_graphql_service.dart  # Customer operations interface
│   ├── api/
│   │   └── customer_graphql_service_impl.dart # Customer operations implementation
│   └── graphql_models/
│       ├── mutations/                     # GraphQL mutation files
│       └── queries/                       # GraphQL query files
└── schema.graphql                         # GraphQL schema definition
```

## 🔧 Setup & Configuration

### 1. Wizard Configuration
GraphQL client, REST API ile aynı wizard configuration sistemini kullanır:

```dart
// App startup
await ApiNetwork.initFromWizard(GetIt.instance);

// Or manual configuration
ApiNetwork.init(
  GetIt.instance,
  storeName: 'yourstore',
  shopifyAccessToken: 'your_access_token',
  apiVersion: '2024-07',
);
```

### 2. Dependency Injection
GraphQL services otomatik olarak dependency injection ile kaydedilir:

```dart
// Get GraphQL services
final productService = GetIt.instance<ProductGraphQLService>();
final customerService = GetIt.instance<CustomerGraphQLService>();
```

## 📚 Usage Examples

### Products

```dart
// Get products with pagination
final products = await productService.getProducts(
  first: 10,
  after: cursor,
  query: 'tag:featured',
);

// Create a new product
final newProduct = await productService.createProduct(
  input: Variables$Mutation$CreateProduct(
    title: 'New Product',
    description: 'Product description',
    vendor: 'Vendor Name',
    productType: 'Type',
    tags: ['tag1', 'tag2'],
  ),
);

// Update product
final updatedProduct = await productService.updateProduct(
  input: Variables$Mutation$UpdateProduct(
    id: 'product_id',
    title: 'Updated Title',
  ),
);
```

### Customers

```dart
// Get customers
final customers = await customerService.getCustomers(
  first: 20,
  query: 'email:customer@example.com',
);

// Create customer
final newCustomer = await customerService.createCustomer(
  input: Variables$Mutation$CreateCustomer(
    firstName: 'John',
    lastName: 'Doe',
    email: 'john@example.com',
    phone: '+1234567890',
  ),
);

// Get customer orders
final customerOrders = await customerService.getCustomerOrders(
  customerId: 'customer_id',
  first: 50,
);
```

## 🌐 GraphQL Client Features

### Static Dio Creation
GraphQL client, `ApiDioClient` yapısına uygun olarak static method'lar kullanır:

```dart
// Create GraphQL Dio instance
final dio = ShopifyGraphQLClient.createGraphQLDio();

// Or use starter method
final dio = ShopifyGraphQLClient.starter();
```

### Automatic Configuration
- Store bilgileri otomatik olarak `ApiNetwork`'ten alınır
- Wizard configuration ile entegre çalışır
- Proxy settings desteklenir
- Interceptor'lar ile error handling

### Error Handling
GraphQL errors otomatik olarak yakalanır ve user-friendly mesajlar döner:

```dart
try {
  final result = await productService.getProducts(first: 10);
} catch (e) {
  if (e.toString().contains('Store name is not set')) {
    // Complete setup wizard first
  } else if (e.toString().contains('Unauthorized')) {
    // Check access token
  }
}
```

## 🔄 Codegen Integration

GraphQL operations için codegen kullanılır:

1. **`.graphql` dosyaları** oluştur
2. **`dart run build_runner build`** çalıştır
3. **Generated types** kullan

```dart
// Generated types
import 'package:apis/network/remote/shopify/graphql/products/graphql_models/queries/get_products.graphql.dart';

// Use generated types
Future<Query$GetProducts> getProducts({required int first}) async {
  // Implementation
}
```

## 🚨 Troubleshooting

### "GraphQL client not initialized"
- Setup wizard'ı tamamla
- Store bilgilerini kontrol et
- Access token'ı doğrula

### "Store name is not set"
- `ApiNetwork.init()` çağır
- Wizard configuration'ı tamamla

### "Unauthorized"
- Shopify access token'ı kontrol et
- Token permissions'ları doğrula

## 📖 Additional Resources

- [Shopify Admin API GraphQL Reference](https://shopify.dev/docs/admin-api/graphql/reference)
- [GraphQL Code Generator](https://graphql-code-generator.com/)
- [Dio HTTP Client](https://pub.dev/packages/dio)
