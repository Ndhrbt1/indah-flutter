import 'dart:math';

import 'package:flutter/material.dart';
import 'package:indah_flutter/dt_domains/products/_index.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import '../../../app/_index.dart';
import '../../../xtras/_index.dart';

part 'a.food.data.dart';
part 'b.food.ctrl.dart';
part 'c.food.view.dart';
part 'widgets/a.food.appbar.dart';
part 'widgets/b.food.fab.dart';
part 'widgets/c.food.charlie.dart';
part 'widgets/d.food.delta.dart';
part 'widgets/e.food.echo.dart';

FoodData get _dt => Data.food.st;
FoodCtrl get _ct => Ctrl.food;
ProductProv get _pv => Prov.product.st;
ProductServ get _sv => Serv.product;
