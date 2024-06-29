import 'dart:math';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:nc_002/dt_domains/_models/_index.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import '../../app/_index.dart';
import '../../xtras/_index.dart';

part 'a.biodata.prov.dart';
part 'b.biodata.serv.dart';
part 'c.biodata.repo.dart';
part 'd.biodata.repo.mock.dart';

BiodataProv get _pv => Prov.biodata.st;
BiodataServ get _sv => Serv.biodata;
BiodataRepo get _rp => Repo.biodata.st;
