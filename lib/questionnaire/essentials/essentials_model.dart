import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'essentials_widget.dart' show EssentialsWidget;
import 'package:flutter/material.dart';

class EssentialsModel extends FlutterFlowModel<EssentialsWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for RadioButton widget.
  FormFieldController<String>? radioButtonValueController;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode3;
  TextEditingController? textController3;
  String? Function(BuildContext, String?)? textController3Validator;
  // Stores action output result for [Custom Action - changeItemsContainerColorAtIndex] action in Container widget.
  List<Color>? itemsOutputColor1;
  // Stores action output result for [Custom Action - changeItemsContainerColorAtIndex] action in Container widget.
  List<Color>? itemsOutputColor2;
  // Stores action output result for [Custom Action - changeItemsContainerColorAtIndex] action in Container widget.
  List<Color>? itemsOutputColor3;
  // Stores action output result for [Custom Action - changeItemsContainerColorAtIndex] action in Container widget.
  List<Color>? itemsOutputColor4;
  // Stores action output result for [Custom Action - changeItemsContainerColorAtIndex] action in Container widget.
  List<Color>? itemsOutputColor5;
  // Stores action output result for [Custom Action - changeItemsContainerColorAtIndex] action in Container widget.
  List<Color>? itemsOutputColor6;
  // Stores action output result for [Custom Action - changeItemsContainerColorAtIndex] action in Container widget.
  List<Color>? itemsOutputColor7;
  // Stores action output result for [Custom Action - changeSharingContainerColorAtIndex] action in Container widget.
  List<Color>? sharingOutputColor1;
  // Stores action output result for [Custom Action - changeSharingContainerColorAtIndex] action in Container widget.
  List<Color>? sharingOutputColor2;
  // Stores action output result for [Custom Action - changeSharingContainerColorAtIndex] action in Container widget.
  List<Color>? sharingOutputColor3;
  // Stores action output result for [Custom Action - changeSharingContainerColorAtIndex] action in Container widget.
  List<Color>? sharingOutputColor4;
  // Stores action output result for [Custom Action - changeSharingContainerColorAtIndex] action in Container widget.
  List<Color>? sharingOutputColor5;
  // Stores action output result for [Custom Action - changeSharingContainerColorAtIndex] action in Container widget.
  List<Color>? sharingOutputColor6;
  // Stores action output result for [Custom Action - changeSharingContainerColorAtIndex] action in Container widget.
  List<Color>? sharingOutputColor7;
  // Stores action output result for [Custom Action - changeSharingContainerColorAtIndex] action in Container widget.
  List<Color>? sharingOutputColor8;
  // Stores action output result for [Custom Action - changeHousingContainerColorAtIndex] action in Container widget.
  List<Color>? housingOutputColor1;
  // Stores action output result for [Custom Action - changeHousingContainerColorAtIndex] action in Container widget.
  List<Color>? housingOutputColor2;
  // Stores action output result for [Custom Action - changeHousingContainerColorAtIndex] action in Container widget.
  List<Color>? housingOutputColor3;
  // Stores action output result for [Custom Action - changeHousingContainerColorAtIndex] action in Container widget.
  List<Color>? housingOutputColor4;
  // Stores action output result for [Custom Action - changeHousingContainerColorAtIndex] action in Container widget.
  List<Color>? housingOutputColor5;
  // Stores action output result for [Custom Action - changeHousingContainerColorAtIndex] action in Container widget.
  List<Color>? housingOutputColor6;
  // Stores action output result for [Custom Action - changeHousingContainerColorAtIndex] action in Container widget.
  List<Color>? housingOutputColor7;
  // Stores action output result for [Custom Action - changeHallContainerColorAtIndex] action in RYANHALL widget.
  List<Color>? hallOutputColor1;
  // Stores action output result for [Custom Action - changeHallContainerColorAtIndex] action in HENNEPINHALL widget.
  List<Color>? hallOutputColor2;
  // Stores action output result for [Custom Action - changeHallContainerColorAtIndex] action in PADUAHALL widget.
  List<Color>? hallOutputColor3;
  // Stores action output result for [Custom Action - changeHallContainerColorAtIndex] action in PLASSMANHALL widget.
  List<Color>? hallOutputColor4;
  // Stores action output result for [Custom Action - changeHallContainerColorAtIndex] action in HINESHALL widget.
  List<Color>? hallOutputColor5;
  // Stores action output result for [Custom Action - changeHallContainerColorAtIndex] action in SNYDERHALL widget.
  List<Color>? hallOutputColor6;
  // Stores action output result for [Custom Action - changeHallContainerColorAtIndex] action in MACCLOSKYTOWNHOUSES widget.
  List<Color>? hallOutputColor7;
  // Stores action output result for [Custom Action - changeHallContainerColorAtIndex] action in CUSHINGVILLAGE widget.
  List<Color>? hallOutputColor8;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    textFieldFocusNode2?.dispose();
    textController2?.dispose();

    textFieldFocusNode3?.dispose();
    textController3?.dispose();
  }

  /// Additional helper methods.
  String? get radioButtonValue => radioButtonValueController?.value;
}
