import 'package:clinic_go/features/home/presentation/cubit/states.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../booking/presentation/booking_screen.dart';
import '../../../booking/presentation/my_appointments_screen.dart';
import '../../../settings/presentation/settings.dart';
import '../screens/home_screen.dart';
import '../search_screen.dart';

class AppCubit extends Cubit<AppStates>{
  AppCubit() : super(InitialState());

  static AppCubit get(BuildContext context) => BlocProvider.of(context);

  int current_page = 0;

  List<Widget> screens = [
    Home_Screen(),
    Booking_Screen(),
    myAppointments_Screen(),
    Settings_Screen(),
  ];

  void changeScreen(int index){
  current_page = index;
  emit(ChangeBottomNavBarState());
  }


}