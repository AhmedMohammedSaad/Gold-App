import 'package:appgold/cubit/stetse.dart';
import 'package:appgold/network/dio_helper.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainCubit extends Cubit<States> {
  MainCubit() : super(InitState());
  static MainCubit get(context) => BlocProvider.of(context);
  double? GoldD;
  int? GoldI;

  getGoldPrise() {
    DioHelper.getData('XAU/USD/').then((value) {
      GoldD = value.data['price_gram_21k'];

      GoldI = GoldD!.round();
      emit(GetGoldPriseState());
    }).catchError((Error) {
      print(Error);
    });
  }

  double? SelverD;
  nt? Selver;
  getSilverPrise() {
    DioHelper.getData('XAG/USD/').then((value) {
      SelverD = value.data['price_gram_21k'];
      emit(GetSilverPriseState());
    }).catchError((Error) {
      print(Error);
    });
  }
}
