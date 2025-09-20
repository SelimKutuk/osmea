import 'package:apis/apis.dart';
import 'package:apis/dio_config/dio_client/api_dio_client.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';
import '../abstract/woo_wishlist_service.dart';
import '../freezed_model/request/add_wishlist_item_request.dart';
import '../freezed_model/request/create_wishlist_group_request.dart';
import '../freezed_model/request/delete_wishlist_item_request.dart';
import '../freezed_model/request/update_wishlist_group_request.dart';
import '../freezed_model/response/create_wishlist_group_response.dart';
import '../freezed_model/response/wishlist_api_response.dart';
import '../freezed_model/response/wishlist_group_response.dart';
import '../freezed_model/response/wishlist_item_response.dart';

part 'api_woo_wishlist_service.g.dart';

@RestApi()
@Injectable(as: WooWishlistService)
abstract class ApiWooWishlistService implements WooWishlistService {
  @factoryMethod
  factory ApiWooWishlistService(Dio dio) => _ApiWooWishlistService(
        ApiDioClient.wooDio(),
        baseUrl: WooNetwork.baseUrl,
      );

  /// Get all wishlist groups for the authenticated user
  /// Endpoint: GET /wp-json/custom-wishlist/{api_version}/groups
  @GET('/wp-json/custom-wishlist/{api_version}/groups')
  @override
  Future<List<WishlistGroupResponse>> getAllGroups({
    @Path('api_version') required String apiVersion,
    @Query('page') int? page,
    @Query('per_page') int? perPage,
  });

  /// Create a new wishlist group
  /// Endpoint: POST /wp-json/custom-wishlist/{api_version}/group
  @POST('/wp-json/custom-wishlist/{api_version}/group')
  @override
  Future<CreateWishlistGroupResponse> createGroup({
    @Path('api_version') required String apiVersion,
    @Body() required CreateWishlistGroupRequest request,
  });

  /// Update an existing wishlist group
  /// Endpoint: PATCH /wp-json/custom-wishlist/{api_version}/group/{group_id}
  @PATCH('/wp-json/custom-wishlist/{api_version}/group/{group_id}')
  @override
  Future<WishlistApiResponse<WishlistGroupResponse>> updateGroup({
    @Path('api_version') required String apiVersion,
    @Path('group_id') required int groupId,
    @Body() required UpdateWishlistGroupRequest request,
  });

  /// Delete a wishlist group
  /// Endpoint: DELETE /wp-json/custom-wishlist/{api_version}/group/{group_id}
  @DELETE('/wp-json/custom-wishlist/{api_version}/group/{group_id}')
  @override
  Future<WishlistApiResponse<dynamic>> deleteGroup({
    @Path('api_version') required String apiVersion,
    @Path('group_id') required int groupId,
  });

  /// Get wishlist items with pagination
  /// Endpoint: GET /wp-json/custom-wishlist/{api_version}/items
  @GET('/wp-json/custom-wishlist/{api_version}/items')
  @override
  Future<WishlistPaginatedResponse<WishlistItemResponse>> getWishlistItems({
    @Path('api_version') required String apiVersion,
    @Query('group_id') int? groupId,
    @Query('page') int? page,
    @Query('per_page') int? perPage,
  });

  /// Add an item to wishlist
  /// Endpoint: POST /wp-json/custom-wishlist/{api_version}/item
  @POST('/wp-json/custom-wishlist/{api_version}/item')
  @override
  Future<WishlistApiResponse<WishlistItemResponse>> addItemToWishlist({
    @Path('api_version') required String apiVersion,
    @Body() required AddWishlistItemRequest request,
  });

  /// Delete an item from wishlist by ID
  /// Endpoint: DELETE /wp-json/custom-wishlist/{api_version}/item/{item_id}
  @DELETE('/wp-json/custom-wishlist/{api_version}/item/{item_id}')
  @override
  Future<WishlistApiResponse<dynamic>> deleteItemById({
    @Path('api_version') required String apiVersion,
    @Path('item_id') required int itemId,
  });

  /// Delete an item from wishlist by product and group
  /// Endpoint: DELETE /wp-json/custom-wishlist/{api_version}/item
  @DELETE('/wp-json/custom-wishlist/{api_version}/item')
  @override
  Future<WishlistApiResponse<dynamic>> deleteItemByProduct({
    @Path('api_version') required String apiVersion,
    @Body() required DeleteWishlistItemRequest request,
  });
}