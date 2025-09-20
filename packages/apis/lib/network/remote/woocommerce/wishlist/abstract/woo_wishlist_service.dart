import '../freezed_model/request/add_wishlist_item_request.dart';
import '../freezed_model/request/create_wishlist_group_request.dart';
import '../freezed_model/request/delete_wishlist_item_request.dart';
import '../freezed_model/request/update_wishlist_group_request.dart';
import '../freezed_model/response/create_wishlist_group_response.dart';
import '../freezed_model/response/wishlist_api_response.dart';
import '../freezed_model/response/wishlist_group_response.dart';
import '../freezed_model/response/wishlist_item_response.dart';

/// Abstract service for WooCommerce Custom Wishlist API operations
abstract class WooWishlistService {
  /// Get all wishlist groups for the authenticated user
  /// 
  /// [apiVersion] - API version (e.g., 'v1')
  /// [page] - Page number for pagination (optional)
  /// [perPage] - Number of items per page (optional)
  Future<List<WishlistGroupResponse>> getAllGroups({
    required String apiVersion,
    int? page,
    int? perPage,
  });

  /// Create a new wishlist group
  /// 
  /// [apiVersion] - API version (e.g., 'v1')
  /// [request] - Group creation data
  Future<CreateWishlistGroupResponse> createGroup({
    required String apiVersion,
    required CreateWishlistGroupRequest request,
  });

  /// Update an existing wishlist group
  /// 
  /// [apiVersion] - API version (e.g., 'v1')
  /// [groupId] - ID of the group to update
  /// [request] - Group update data
  Future<WishlistApiResponse<WishlistGroupResponse>> updateGroup({
    required String apiVersion,
    required int groupId,
    required UpdateWishlistGroupRequest request,
  });

  /// Delete a wishlist group
  /// 
  /// [apiVersion] - API version (e.g., 'v1')
  /// [groupId] - ID of the group to delete
  Future<WishlistApiResponse<dynamic>> deleteGroup({
    required String apiVersion,
    required int groupId,
  });

  /// Get wishlist items with pagination
  /// 
  /// [apiVersion] - API version (e.g., 'v1')
  /// [groupId] - Filter by specific group ID (optional)
  /// [page] - Page number for pagination
  /// [perPage] - Number of items per page
  Future<WishlistPaginatedResponse<WishlistItemResponse>> getWishlistItems({
    required String apiVersion,
    int? groupId,
    int? page,
    int? perPage,
  });

  /// Add an item to wishlist
  /// 
  /// [apiVersion] - API version (e.g., 'v1')
  /// [request] - Item addition data
  Future<WishlistApiResponse<WishlistItemResponse>> addItemToWishlist({
    required String apiVersion,
    required AddWishlistItemRequest request,
  });

  /// Delete an item from wishlist by ID
  /// 
  /// [apiVersion] - API version (e.g., 'v1')
  /// [itemId] - ID of the item to delete
  Future<WishlistApiResponse<dynamic>> deleteItemById({
    required String apiVersion,
    required int itemId,
  });

  /// Delete an item from wishlist by product and group
  /// 
  /// [apiVersion] - API version (e.g., 'v1')
  /// [request] - Item deletion data (product_id and group_id)
  Future<WishlistApiResponse<dynamic>> deleteItemByProduct({
    required String apiVersion,
    required DeleteWishlistItemRequest request,
  });
}