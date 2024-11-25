import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tradematch/utilities/setup.dart';

final mainViewProvider = StateProvider<String>((ref) => 'HOME');
final connectViewProvider = StateProvider<String>((ref) => 'Jobs');
final dropdownValueProvider = StateProvider<String>((ref) => options.first);
