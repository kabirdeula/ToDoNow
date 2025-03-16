import 'package:flutter_bloc/flutter_bloc.dart';

import '../dashboard.dart';

class DashboardCubit extends Cubit<DashboardState> {
  DashboardCubit() : super(DashboardState.initial());

  void changeIndex(int index) => emit(DashboardState.loaded(index: index));
}
