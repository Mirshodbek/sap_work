import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sap_work/bloc/hunter/profile/profile_bloc.dart';
import 'package:sap_work/bloc/hunter/vacancies/vacancies_bloc.dart';
import 'package:sap_work/screens/employer/employer.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'bloc/internet/internet_cubit.dart';
import 'global_bloc/app_bloc_observer.dart';
import 'global_bloc/my_hydrated_storage.dart';
import 'router/app_router.dart';
import 'screens/hunter/hunter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  HydratedBloc.storage = MyHydratedStorage();
  // Bloc.observer = AppBlocObserver();

  final _announceRepository = HunterRepository();

  runApp(
    RepositoryProvider<HunterRepositoryBase>(
      create: (_) => _announceRepository,
      child: MyApp(
        appRouter: AppRouter(VacanciesBloc(_announceRepository)),
        connectivity: Connectivity(),
      ),
    ),
  );
}

class MyApp extends StatelessWidget {
  final AppRouter appRouter;
  final Connectivity connectivity;
  MyApp({required this.appRouter,required this.connectivity});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<NavigationCubit>(
          create: (_) =>
          NavigationCubit(),
        ),
        BlocProvider<InternetCubit>(
          create: (internetCubitContext) =>
              InternetCubit(connectivity: connectivity),
        ),

        BlocProvider(
          create: (_) => AnnounceECubit(),
        ),
        BlocProvider(
          create: (_) => PayCubit(),
        ),
        BlocProvider(
          create: (_) => ChatCubit(
            context.read<HunterRepositoryBase>(),
          ),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        onGenerateRoute: appRouter.onGeneratedRouter,
      ),
    );
  }
}
