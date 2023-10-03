import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part "theme_bloc.freezed.dart";

class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  ThemeBloc() : super(const ThemeModeState(false)) {
    on<ThemeEvent>((event, emit) {
      event.when(changeTheme: (isCurrentlyDark) {
        emit(ThemeModeState(!isCurrentlyDark));
      });
    });
  }
}

@freezed
abstract class ThemeEvent with _$ThemeEvent {
  const factory ThemeEvent.changeTheme(bool isCurrentlyDark) = ChangeTheme;
}

@freezed
abstract class ThemeState with _$ThemeState {
  const factory ThemeState.theme(bool isDark) = ThemeModeState;
}
