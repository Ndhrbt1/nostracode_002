import 'dart:math';

import 'package:flutter/material.dart';
import 'package:nc_002/dt_domains/_models/_index.dart';
import 'package:nc_002/dt_domains/a.biodata/_index.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import '../../../app/_index.dart';
import '../../../xtras/_index.dart';

part 'a.biodata_detail.data.dart';
part 'b.biodata_detail.ctrl.dart';
part 'c.biodata_detail.view.dart';
part 'widgets/a.biodata_detail.appbar.dart';
part 'widgets/b.biodata_detail.fab.dart';
part 'widgets/c.biodata_detail.charlie.dart';
part 'widgets/d.biodata_detail.delta.dart';
part 'widgets/e.biodata_detail.echo.dart';

BiodataDetailData get _dt => Data.biodataDetail.st;
// BiodataDetailCtrl get _ct => Ctrl.biodataDetail;

BiodataProv get _pv => Prov.biodata.st;
// BiodataServ get _sv => Serv.biodata;
