import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:news_app/core/utils/styles.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'theme_state.dart';

class ThemeCubit extends Cubit<ThemeState> {
  ThemeCubit() : super(ThemeInitial()){
    getTheme();
}


  Future saveTheme(Brightness brightness) async {
    final themeindex = brightness == Brightness.light ? 0 : 1;
    final SharedPreferences shared = await SharedPreferences.getInstance();
    await shared.setInt("theme", themeindex);
  }

  Future getTheme() async {
    final SharedPreferences shared = await SharedPreferences.getInstance();
    var savedTheme = shared.getInt("theme");
    if (savedTheme == 0) {
      emit(ThemeChange(AppThemes.lightTheme));
    } else {
      emit(ThemeChange(AppThemes.darkTheme));
    }
  }
  void Toggle() {
    if (state.themeData.brightness == Brightness.light) {
      emit(ThemeChange(AppThemes.darkTheme));
      saveTheme(Brightness.dark);
    } else {
      emit(ThemeChange(AppThemes.lightTheme));
      saveTheme(Brightness.light);
    }
  }
}