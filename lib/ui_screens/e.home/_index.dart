import 'dart:math';

import 'package:flutter/material.dart';
import 'package:indah_flutter/ui_screens/_index.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import '../../app/_index.dart';
import '../../xtras/_index.dart';

part 'a.home.data.dart';
part 'b.home.ctrl.dart';
part 'c.home.view.dart';
part 'widgets/a.home.appbar.dart';
part 'widgets/b.home.fab.dart';
part 'widgets/c.home.charlie.dart';
part 'widgets/d.home.delta.dart';
part 'widgets/e.home.echo.dart';

// ignore: unused_element
HomeCtrl get _ct => Ctrl.home;

HomeData get _dt => Data.home.st;
