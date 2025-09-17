# 📦 WooCommerce Custom Wishlist API

This project introduces a **custom Wishlist plugin** for WooCommerce that provides a flexible and mobile-ready API.  
Unlike third-party solutions, this plugin is fully integrated with WooCommerce and exposes REST API endpoints for managing user wishlists.

---

## ✨ Features

- **Wishlist Groups**:  
  Users can create multiple groups (e.g., "Holiday Gifts", "Electronics").  
  A default group is always available for every user.

- **Group Management**:  
  Create, update, delete, and list groups.

- **Wishlist Items**:  
  Add or remove products to/from groups.

- **Pagination Support**:  
  Retrieve wishlist items with pagination for mobile apps or external clients.

- **Secure API**:  
  JWT-based authentication ensures users can only manage their own wishlist.

---

## 🔑 API Endpoints

### 📂 Group Endpoints

#### 1. Get All Groups

```bash
curl --location 'https://woocomm.store/wp-json/custom-wishlist/v1/groups' \
--header 'Authorization: Bearer eyJ..' \
--header 'Content-Type: application/json'
```

#### 2. Create a Group

```bash
curl --location 'https://woocomm.store/wp-json/custom-wishlist/v1/group' \
--header 'Authorization: Bearer eyJ..' \
--header 'Content-Type: application/json' \
--data '{
    "name": "Kış Alışverişi"
}'
```

#### 3. Update Group Name

```bash
curl --location --request PATCH 'https://woocomm.store/wp-json/custom-wishlist/v1/group/2' \
--header 'Authorization: Bearer eyJ..' \
--header 'Content-Type: application/json' \
--data '{
    "name": "Kış Alışverişi"
}'
```

#### 4. Delete a Group

```bash
curl --location --request DELETE 'https://woocomm.store/wp-json/custom-wishlist/v1/group/2' \
--header 'Authorization: Bearer eyJ..'
```

### 🛒 Item Endpoints

#### 5. Get Wishlist Items (Paginated)

```bash
curl --location 'https://woocomm.store/wp-json/custom-wishlist/v1/items?page=1&per_page=5' \
--header 'Authorization: Bearer eyJ..' \
--header 'Content-Type: application/json'
```

#### 6. Add Item to Wishlist

```bash
curl --location 'https://woocomm.store/wp-json/custom-wishlist/v1/item' \
--header 'Authorization: Bearer eyJ..' \
--header 'Content-Type: application/json' \
--data '{
    "product_id": 93,
    "group_id": 1
}'
```

#### 7. Delete Item from Wishlist (By Group)

```bash
curl --location --request DELETE 'https://woocomm.store/wp-json/custom-wishlist/v1/item' \
--header 'Authorization: Bearer eyJ..' \
--header 'Content-Type: application/json' \
--data '{
    "product_id": 93,
    "group_id": 1
}'
```

---

## 🚀 Use Cases

Mobile Applications

- Fetch and display a user’s wishlist with proper pagination.
  User Experience
- Allow users to categorize products into groups like Holiday Gifts, Favorites, Electronics.
  Integration
- Provide a clean REST API for third-party frontends without relying on third-party wishlist plugins.

---

## 📌 Notes

🔑 Authentication: All endpoints require JWT Bearer Token.

📦 Default Group: Each user always has a default group created automatically.

📄 Pagination: Use page and per_page query params for /items.

✅ Data Validation: Product and group IDs are validated before processing requests.
