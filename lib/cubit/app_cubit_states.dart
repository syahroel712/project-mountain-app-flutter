import 'package:equatable/equatable.dart';
import 'package:flutter_app_mountain/model/data_model.dart';

abstract class CubitStates extends Equatable {}

// stiap aplikasi yg pakai cubit butuh satu class bernama InitialState
class InitialState extends CubitStates {
  @override
  // TODO: implement props
  List<Object> get props => [];
}

class WelcomeState extends CubitStates {
  @override
  // TODO: implement props
  List<Object> get props => [];
}

class LoadingState extends CubitStates {
  @override
  // TODO: implement props
  List<Object> get props => [];
}

class LoadedState extends CubitStates {
  LoadedState(this.places);
  final List<DataModel> places;
  @override
  // TODO: implement props
  List<Object> get props => [places];
}

class DetailState extends CubitStates {
  DetailState(this.place);
  final DataModel place;

  @override
  // TODO: implement props
  List<Object> get props => [place];
}
