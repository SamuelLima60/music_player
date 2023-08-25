import 'package:bloc/bloc.dart';
import 'home_state.dart';

abstract class HomePageEvent {}

class ToggleSearchModeEvent extends HomePageEvent {}

class SearchEvent extends HomePageEvent {
  final String searchText;

  SearchEvent(this.searchText);
}

class HomeBloc extends Bloc<HomePageEvent, HomeState> {
  HomeBloc() : super(HomeState(isSearching: false, searchText: '')) {
    on<SearchEvent>((event, emit) {
      emit(state.copyWith(searchText: event.searchText));
    });

    on<ToggleSearchModeEvent>((event, emit) {
      emit(state.copyWith(isSearching: !state.isSearching, searchText: ''));
    });
  }
}
