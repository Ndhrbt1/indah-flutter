import 'dart:math';
// ignore: avoid_web_libraries_in_flutter
import 'dart:html' as html;

import 'package:flutter/material.dart';
import 'package:indah_flutter/ui_screens/beranda/a.food/_index.dart';
import 'package:indah_flutter/ui_screens/beranda/c.life/_index.dart';
import 'package:indah_flutter/ui_screens/beranda/b.tech/_index.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import '../../app/_index.dart';
import '../../xtras/_index.dart';

part 'a.beranda.data.dart';
part 'b.beranda.ctrl.dart';
part 'c.beranda.view.dart';
part 'widgets/a.beranda.appbar.dart';
part 'widgets/b.beranda.fab.dart';
part 'widgets/c.beranda.charlie.dart';
part 'widgets/d.beranda.delta.dart';
part 'widgets/e.beranda.echo.dart';
part 'widgets/f.beranda.searchbox.dart';

BerandaData get _dt => Data.beranda.st;
