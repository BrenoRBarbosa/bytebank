import 'package:http/http.dart';
import 'package:http_interceptor/http_interceptor.dart';

import 'interceptors/logging_interceptor.dart';

Client client = InterceptedClient.build(interceptors: [LoggingInterceptor()]);

final String baseUrl = "http://192.168.1.5:8080/transactions";
