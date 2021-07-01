import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sap_work/injection_container.dart' as di;
import 'router/app_router.dart';
import 'screens/hunter/hunter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // Bloc.observer = AppBlocObserver();
  await di.init();

  final _hunterRepository = HunterRepository();
  final _filterBloc = FilterBloc(_hunterRepository);
  runApp(
    RepositoryProvider<HunterRepositoryBase>(
      create: (_) => _hunterRepository,
      child: MyApp(
        appRouter: AppRouter(_filterBloc),
        connectivity: Connectivity(),
      ),
    ),
  );
}

class MyApp extends StatelessWidget {
  final AppRouter appRouter;
  final Connectivity connectivity;

  MyApp({
    required this.appRouter,
    required this.connectivity,
  });

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<NavigationCubit>(
          create: (_) => NavigationCubit(),
        ),
        BlocProvider<InternetCubit>(
          create: (_) => InternetCubit(connectivity: connectivity),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        onGenerateRoute: appRouter.onGeneratedRouter,
      ),
    );
  }
}
