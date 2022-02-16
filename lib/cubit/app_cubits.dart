import 'package:bloc/bloc.dart';
import 'package:flutter_app_mountain/cubit/app_cubit_states.dart';
import 'package:flutter_app_mountain/model/data_model.dart';
import 'package:flutter_app_mountain/pages/detail_page.dart';
import 'package:flutter_app_mountain/services/data_services.dart';

class AppCubits extends Cubit<CubitStates> {
  // butuh supercontructor utk menjalankan cubit
  // ketika dijalankan InitialState tidak akan menghasilkan apapun karena tidak ada aksi di class yg dibuat(kecuali jika ada aksi), maka dari itu panggil emit utk menampilkan state WelcomeState
  AppCubits({required this.data}) : super(InitialState()) {
    emit(WelcomeState());
  }

  final DataServices data;
  late final places;
  void getData() async {
    try {
      emit(LoadingState());
      places = await data.getInfo();
      emit(LoadedState(places));
    } catch (e) {}
  }

  detailPage(DataModel data) {
    emit(DetailState(data));
  }

  goHome() {
    emit(LoadedState(places));
  }
}
