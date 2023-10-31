import 'dart:math';

import 'package:flutter/material.dart';
import 'package:indah_flutter/dt_domains/products/_index.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import '../../app/_index.dart';
import '../../xtras/_index.dart';

part 'a.cart.data.dart';
part 'b.cart.ctrl.dart';
part 'c.cart.view.dart';
part 'widgets/a.cart.appbar.dart';
part 'widgets/b.cart.fab.dart';
part 'widgets/c.cart.charlie.dart';
part 'widgets/d.cart.delta.dart';
part 'widgets/e.cart.echo.dart';

// CartCtrl get _ct => Ctrl.cart;
CartData get _dt => Data.cart.st;
ProductProv get _pv => Prov.product.st;
// ProductServ get _sv => Serv.product;