// my_hydrated_storage.dart

import 'package:hydrated_bloc/hydrated_bloc.dart';

class MyHydratedStorage implements Storage {
  @override
  dynamic read(String key) {
    print(key);
  }

  @override
  Future<void> write(String key, dynamic value) async {
   print(key);
  }

  @override
  Future<void> delete(String key) async {
    // TODO: implement delete
  }

  @override
  Future<void> clear() async {
    // TODO: implement clear
  }
}