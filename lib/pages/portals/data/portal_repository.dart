import '../domain/adapters/repository_adapter.dart';
import '../domain/entity/cases_model.dart';
import 'portal_api_provider.dart';
import 'package:meta/meta.dart';

class PortalRepository implements IPortalRepository {
  PortalRepository({@required this.provider});
  final IPortalProvider provider;

  @override
  Future<CasesModel> getCases() async {
    final cases = await provider.getCases("/summary");
    if (cases.status.hasError) {
      return Future.error(cases.statusText);
    } else {
      return cases.body;
    }
  }
}
