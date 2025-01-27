import 'package:flutter/material.dart';

import 'package:noteapp/widgets/custom_appBar.dart';

class NoteAppView extends StatelessWidget {
  const NoteAppView({super.key});
  static String id = 'NopeAppView';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Custom_Appbar(),
    );
  }
}
