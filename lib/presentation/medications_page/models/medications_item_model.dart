import '../../../core/app_export.dart';import 'package:flutter/material.dart';/// This class is used in the [medications_item_widget] screen.
class MedicationsItemModel {MedicationsItemModel({this.panadoltwo, this.tablet10mg, this.tabletsCounterController, this.twohundredtwentController, this.durationController, this.id, }) { panadoltwo = panadoltwo  ?? Rx("Panadol");tablet10mg = tablet10mg  ?? Rx("Tablet (10mg)");id = id  ?? Rx(""); }

Rx<String>? panadoltwo;

Rx<String>? tablet10mg;

TextEditingController tabletsCounterController = TextEditingController();

TextEditingController twohundredtwentController = TextEditingController();

TextEditingController durationController = TextEditingController();

Rx<String>? id;

 }
