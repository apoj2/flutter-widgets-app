import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/config/theme/app_theme.dart';

final themeModeProvider = StateProvider((ref) => true);
final colorListProvider = StateProvider((ref) => colorList);
final selectedColorProvider = StateProvider((ref) => 0);
