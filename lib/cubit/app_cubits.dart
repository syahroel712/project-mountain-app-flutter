import 'package:bloc/bloc.dart';
import 'package:flutter_app_mountain/cubit/app_cubit_states.dart';

class AppCubits extends Cubit<CubitStates> {
  // butuh supercontructor utk menjalankan cubit
  // ketika dijalankan InitialState tidak akan menghasilkan apapun karena tidak ada aksi di class yg dibuat(kecuali jika ada aksi), maka dari itu panggil emit utk menampilkan state WelcomeState
  AppCubits() : super(InitialState()) {
    emit(WelcomeState());
  }
}
