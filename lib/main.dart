import 'package:chat/internal/application.dart';
import 'package:chat/main.config.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

@InjectableInit(preferRelativeImports: false)
void _configureDependencies() => GetIt.instance.init();

void main() {
  _configureDependencies();
  runApp(const Application());
}
