import 'dart:math';

import 'package:flutter/material.dart';
import 'package:nc_002/dt_domains/_models/_index.dart';
import 'package:nc_002/dt_domains/a.biodata/_index.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import '../../../app/_index.dart';
import '../../../xtras/_index.dart';

part 'a.biodata_list.data.dart';
part 'b.biodata_list.ctrl.dart';
part 'c.biodata_list.view.dart';
part 'widgets/a.biodata_list.appbar.dart';
part 'widgets/b.biodata_list.fab.dart';
part 'widgets/c.biodata_list.charlie.dart';
part 'widgets/d.biodata_list.delta.dart';
part 'widgets/e.biodata_list.echo.dart';

BiodataListData get _dt => Data.biodataList.st;
BiodataListCtrl get _ct => Ctrl.biodataList;
BiodataProv get _pv => Prov.biodata.st;
BiodataServ get _sv => Serv.biodata;
