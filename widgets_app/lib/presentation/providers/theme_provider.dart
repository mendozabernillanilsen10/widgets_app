import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/config/theme/app_theme.dart';

//listado de colores
final colorlistProvider = Provider((ref) => colorList);
// un simple boleam
final IsdarModeProvider = StateProvider((ref) => false);
// un simple boleam
final colorSelectcolorProvaider = StateProvider((ref) => 0);
// objeto personalizado provaider

final themeNotiqueProvaider =
    StateNotifierProvider<themeNotifier, AppTheme>((ref) => themeNotifier());

// theme controller o notificar
class themeNotifier extends StateNotifier<AppTheme> {
  //estado
  themeNotifier() : super(AppTheme());

  void toggleDarkMode() {
    state = state.copywith(isDarMode: !state.isDarMode);
  }

  void ChanseColorIndez(int colorIndex) {
    state = state.copywith(SelectcColor: colorIndex);
  }
}
