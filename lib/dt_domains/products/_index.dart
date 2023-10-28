import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:indah_flutter/app/utils/_index.dart';
import 'package:indah_flutter/dt_domains/_models/_index.dart';
import 'package:indah_flutter/dt_sources/firebase/_index.dart';
import 'package:indah_flutter/xtras/_index.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

part 'a.product.prov.dart';
part 'b.product.serv.dart';
part 'c.product.repo.dart';
part 'd.product.repo.mock.dart';

ProductProv get _pv => Prov.product.st;
ProductRepo get _rp => Repo.product.st;
ProductServ get _sv => Serv.product;
