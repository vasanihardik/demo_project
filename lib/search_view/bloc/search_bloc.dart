import 'package:bloc/bloc.dart';
import 'package:quiz_demo/db/PrdoductDao.dart';
import 'package:quiz_demo/db/database.dart';
import 'package:quiz_demo/db/model/ProductTable.dart';
import 'package:quiz_demo/search_view/bloc/search_event.dart';
import 'package:quiz_demo/search_view/bloc/search_state.dart';

class SearchBloc extends Bloc<SearchEvent, SearchState> {


  Future<ProductDao> getDatabase() async {
    final database =
        await $FloorAppDatabase.databaseBuilder('database.db').build();
    return database.productDao;
  }

  SearchBloc() : super(const SearchState(products: [])) {
    on<LoadSearchEvent>(_loadSearchDataFromDB);
  }

  void _loadSearchDataFromDB(
      LoadSearchEvent event, Emitter<SearchState> emit) async {
    print("Event = >>> ${event.keyword}");
    emit(state.copyWith(isSearching: true, products: []));
    ProductDao dao = await getDatabase();
    List<ProductsTable> prod = await dao.findAllPeople();
    Future.delayed(const Duration(seconds: 5));
    print("Event 1234 = >>> ${event.keyword} ${prod}");
    emit(state.copyWith(isSearching: false, products: prod));
  }
}
