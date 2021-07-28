extension ListExtension<T> on List<T> {
  void replaceWhere(bool Function(T) test, T toReplace) => this[indexWhere(test)] = toReplace;

  void reOrder(int oldIndex, int newIndex) => insert(newIndex, removeAt(oldIndex));
  void whereList(bool Function(T) test)=>this.where(test).toList();
}