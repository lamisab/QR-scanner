// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class QRWidget extends StatelessWidget {
  QRWidget({required this.uniqueString, required this.size,super.key});
  String? uniqueString;
  double? size;

  @override
  Widget build(BuildContext context) {
    return QrImage(
      data: uniqueString!,
      version: QrVersions.auto,
      size: size,
    );
  }
}
