// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../widget/scanner_widget.dart';
class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: ScannerWidget(),
        ),
      ),
      );
  }
}