part of 'theme_cubit.dart';

@immutable
abstract class ThemeState {
  final ThemeData themeData;
   ThemeState(this.themeData);
}

final class ThemeInitial extends ThemeState {
  ThemeInitial(): super (AppThemes.lightTheme);
}


final class ThemeChange extends ThemeState {
  ThemeChange(ThemeData themedata) : super(themedata);
}


