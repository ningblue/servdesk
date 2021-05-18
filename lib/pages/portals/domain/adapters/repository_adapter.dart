import '../entity/cases_model.dart';

// ignore: one_member_abstracts
abstract class IPortalRepository {
  Future<CasesModel> getCases();
}
