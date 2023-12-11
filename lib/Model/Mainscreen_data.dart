class MainScreenData {
  String fromlocation;
  String tolocation;

  MainScreenData({required this.fromlocation, required this.tolocation});
  MainScreenData copyWith({
    String? fromlocation,
    String? tolocation,
  }) {
    return MainScreenData(
      fromlocation: fromlocation ?? this.fromlocation,
      tolocation: tolocation ?? this.tolocation,
    );
  }
}
