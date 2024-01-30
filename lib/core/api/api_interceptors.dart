import 'package:dio/dio.dart';
import 'package:e_ecommerce/cache/cache_helper.dart';
import 'package:e_ecommerce/core/api/end_ponits.dart';

class ApiInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    options.headers['Accept-Language'] = "ar";
    options.headers['Content-Type'] = "application/json";
    options.headers['Authorization'] =
        CacheHelper.getDataString(key: ApiKey.token) != null
            ? CacheHelper.getDataString(key: ApiKey.token)
            : null;
    super.onRequest(options, handler);
  }
}
