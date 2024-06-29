import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:nc_002/dt_domains/_models/_index.dart';
import 'package:nc_002/dt_domains/a.biodata/_index.dart';
import 'package:nc_002/ui_widgets/spaces/_index.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import '../../../app/_index.dart';
import '../../../xtras/_index.dart';

part 'a.biodata_edit.data.dart';
part 'b.biodata_edit.ctrl.dart';
part 'c.biodata_edit.view.dart';
part 'widgets/a.biodata_edit.appbar.dart';
part 'widgets/b.biodata_edit.fab.dart';
part 'widgets/c.biodata_edit.name.dart';
part 'widgets/d.biodata_edit.level.dart';
part 'widgets/e.biodata_edit.quotes.dart';
part 'widgets/f.biodata_edit.study.dart';
part 'widgets/g.biodata_edit.grade.dart';
part 'widgets/h.biodata_edit.submit.dart';

BiodataEditData get _dt => Data.biodataEdit.st;
BiodataEditCtrl get _ct => Ctrl.biodataEdit;

BiodataProv get _pv => Prov.biodata.st;
BiodataServ get _sv => Serv.biodata;
