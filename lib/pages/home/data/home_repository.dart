import '../domain/adapters/repository_adapter.dart';
import '../domain/entity/cases_model.dart';
import 'home_api_provider.dart';
import 'package:meta/meta.dart';

class HomeRepository implements IHomeRepository {
  HomeRepository({@required this.provider});
  // HomeRepository({const Requir});
  final IHomeProvider provider;

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
