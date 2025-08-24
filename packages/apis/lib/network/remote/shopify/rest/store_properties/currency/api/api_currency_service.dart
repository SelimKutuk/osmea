import 'package:apis/apis.dart';
import 'package:apis/dio_config/dio_client/abstract/api_base_client.dart';
import 'package:apis/network/remote/shopify/rest/store_properties/currency/abstract/currency_service.dart';
import 'package:apis/network/remote/shopify/rest/store_properties/currency/freezed_model/retrieves_list_of_currencies_response.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/http.dart';

part 'api_currency_service.g.dart';

@RestApi()
@Injectable(as: CurrencyService)
abstract class CurrencyServiceClient implements CurrencyService {
  @factoryMethod
  factory CurrencyServiceClient(ApiBaseClient apiClient) => _CurrencyServiceClient(
        apiClient.starter(),
        baseUrl: ApiNetwork.baseUrl,
      );

  @override
  @GET('/api/{api_version}/currencies.json')
  Future<RetrievesListOfCurrenciesResponse> retrieveListOfCurrencies({
    @Path('api_version') required String apiVersion,
  });
}
