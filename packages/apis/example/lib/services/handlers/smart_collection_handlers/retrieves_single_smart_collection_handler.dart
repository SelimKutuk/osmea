import 'package:apis/apis.dart';
import 'package:apis/network/remote/smart_collections/abstract/smart_collection_service.dart';
import 'package:example/services/api_request_handler.dart';
import 'package:example/services/api_service_registry.dart';
import 'package:get_it/get_it.dart';

///**************************************************************
///********* 🧠 RETRIEVE SINGLE SMART COLLECTION BY ID **********
///**************************************************************

class RetrieveSingleSmartCollectionHandler implements ApiRequestHandler {
  @override
  Future<Map<String, dynamic>> handleRequest(
    String method,
    Map<String, String> params,
  ) async {
    if (method != 'GET') {
      return {
        'status': 'error',
        'message': 'Method $method not supported. Only GET is allowed.',
        'timestamp': DateTime.now().toIso8601String(),
      };
    }

    final id = params['id'];
    if (id == null || id.isEmpty) {
      return {
        'status': 'error',
        'message': 'Missing required parameter: id',
        'timestamp': DateTime.now().toIso8601String(),
      };
    }

    try {
      final response =
          await GetIt.I<SmartCollectionService>().retrieveSingleSmartCollection(
        apiVersion: ApiNetwork.apiVersion,
        id: id,
      );

      return {
        'status': 'success',
        'data': response.toJson(),
        'timestamp': DateTime.now().toIso8601String(),
      };
    } catch (e) {
      return {
        'status': 'error',
        'message': 'Failed to retrieve smart collection: ${e.toString()}',
        'timestamp': DateTime.now().toIso8601String(),
      };
    }
  }

  @override
  List<String> get supportedMethods => ['GET'];

  @override
  Map<String, List<ApiField>> get requiredFields => {
        'GET': [
          ApiField(
            name: 'id',
            type: ApiFieldType.text,
            isRequired: true,
            label: 'Smart Collection ID',
            hint: 'The unique identifier for the smart collection',
          ),
        ],
      };
}