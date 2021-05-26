// import 'dart:io';
import 'package:dio/dio.dart';

var dio = Dio(BaseOptions(
    baseUrl: "http://10.0.2.2:9090/api",
    connectTimeout: 5000,
    receiveTimeout: 100000,
    headers: {
      "Access-Token":
          "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MjIyNSwidXNlcm5hbWUiOiJodW9kYS1qayIsImV4cCI6MTYyMjA5ODc3OH0.Dx23002_KfgkMYp7WDgfHIKbmG27_uXNa2Wc_UJXzok",
      'Content-Type': 'application/json; charset=UTF-8',
      'Accept': "*/*",
      'connection': 'keep-alive',
    })); // with default Options
