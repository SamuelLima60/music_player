class HomeState {
  final bool isSearching;
  final String searchText;

  HomeState({required this.isSearching, required this.searchText});

  HomeState copyWith({bool? isSearching, String? searchText}) {
    return HomeState(
      isSearching: isSearching ?? this.isSearching,
      searchText: searchText ?? this.searchText,
    );
  }
}
