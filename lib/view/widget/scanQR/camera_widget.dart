import 'dart:developer';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';
import 'package:qr_scanner/view/widget/scanQR/error.dart';
import 'package:qr_scanner/view/widget/scanQR/sucsses.dart';
import '../../../controller/user_controller.dart';
import '../../../utils/colors.dart';
import '../text_widget.dart';

class CameraWidget extends StatefulWidget {
  const CameraWidget({super.key});

  @override
  State<CameraWidget> createState() => _CameraWidgetState();
}

class _CameraWidgetState extends State<CameraWidget> {
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');
  Barcode? result;
  QRViewController? qrViewController;
  UserController controller = Get.find(tag: "data");

  @override
  void reassemble() {
    super.reassemble();
    if (Platform.isAndroid) {
      qrViewController!.pauseCamera();
    } else if (Platform.isIOS) {
      qrViewController!.resumeCamera();
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.74,
      width: MediaQuery.of(context).size.width * 0.95,
      child: Column(
        children: [
          Center(
            child: (result != null)
                ? Center(
                    child: LayoutBuilder(
                      builder: (BuildContext, BoxConstraints) {
                        if (controller.errorChecker(result!.code.toString())) {
                          return Sucsses();
                        } else {
                          return error();
                        }
                      },
                    ),
                  )
                : TextWidget(
                    text: 'Scan QR Code',
                    color: blackColor,
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.0640,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.4550,
            child: QRView(
              key: qrKey,
              overlay: QrScannerOverlayShape(
                borderColor: categoryText,
                borderRadius: 5,
                borderLength: 35,
                borderWidth: 5,
                cutOutSize: MediaQuery.of(context).size.height * 0.6199,
              ),
              onQRViewCreated: _onQRViewCreated,
              onPermissionSet: (ctrl, p) => _onPermissionSet(context, ctrl, p),
            ),
          ),
        ],
      ),
    );
  }

  void _onQRViewCreated(QRViewController qrViewController) {
    this.qrViewController = qrViewController;
    qrViewController.scannedDataStream.listen((scanData) {
      setState(() {
        result = scanData;
      });
    });
  }

  void _onPermissionSet(BuildContext context, QRViewController ctrl, bool p) {
    log('${DateTime.now().toIso8601String()}_onPermissionSet $p');
    if (!p) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('no Permission')),
      );
    }
  }

  @override
  void dispose() {
    qrViewController?.dispose();
    super.dispose();
  }
}
