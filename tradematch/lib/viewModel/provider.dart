import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final mainViewProvider = StateProvider<String>((ref) => 'HOME');
final connectViewProvider = StateProvider<String>((ref) => 'Jobs');
