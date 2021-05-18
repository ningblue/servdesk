import 'package:get/get.dart';
import '../domain/entity/cases_model.dart';

// ignore: one_member_abstracts
abstract class IPortalProvider {
  Future<Response<CasesModel>> getCases(String path);
}

class PortalProvider extends GetConnect implements IPortalProvider {
  @override
  void onInit() {
    httpClient.defaultDecoder =
        (val) => CasesModel.fromJson(val as Map<String, dynamic>);
    httpClient.baseUrl = 'https://api.covid19api.com';
  }

  @override
  Future<Response<CasesModel>> getCases(String path) => get(path);
}
