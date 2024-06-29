import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:nc_002/dt_domains/_models/_index.dart';
import 'package:nc_002/dt_domains/a.biodata/_index.dart';
import 'package:nc_002/ui_widgets/spaces/_index.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import '../../../app/_index.dart';
import '../../../xtras/_index.dart';

part 'a.biodata_add.data.dart';
part 'b.biodata_add.ctrl.dart';
part 'c.biodata_add.view.dart';
part 'widgets/a.biodata_add.appbar.dart';
part 'widgets/b.biodata_add.fab.dart';
part 'widgets/c.biodata_add.name.dart';
part 'widgets/d.biodata_add.level.dart';
part 'widgets/e.biodata_add.quotes.dart';
part 'widgets/f.biodata_add.study.dart';
part 'widgets/g.biodata_add.grade.dart';

part 'widgets/h.biodata_add.submit.dart';

BiodataAddData get _dt => Data.biodataAdd.st;
BiodataAddCtrl get _ct => Ctrl.biodataAdd;

BiodataProv get _pv => Prov.biodata.st;
BiodataServ get _sv => Serv.biodata;
