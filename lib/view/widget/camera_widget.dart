import 'dart:developer';
import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';
import '../../controller/user_controller.dart';
import '../../utils/colors.dart';
import 'text_widget.dart';

class CameraWidget extends StatefulWidget {
  const CameraWidget({super.key});

  @override
  State<CameraWidget> createState() => _CameraWidgetState();
}

class _CameraWidgetState extends State<CameraWidget> {
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');
  Barcode? result;
  QRViewController? controller;
  UserController entrant = Get.find(tag: "data");

  @override
  void reassemble() {
    super.reassemble();
    if (Platform.isAndroid) {
      controller!.pauseCamera();
    } else if (Platform.isIOS) {
      controller!.resumeCamera();
    }
  }

  @override
  Widget build(BuildContext context) {
    if (result != null) {
      entrant.addEntrant(result!.code.toString());
      entrant.isScanned.value = true;
    }
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.6199,
      width: MediaQuery.of(context).size.width * 0.95,
      child: Column(
        children: [
          Center(
            child: (result != null)
                ? Center(
                    child: LayoutBuilder(
                      builder: (BuildContext, BoxConstraints) {
                        if (entrant.isScanned.value == true &&
                            entrant.errorChecker(result!.code.toString())) {
                          entrant.addEntrant(result!.code.toString());
                          return const Text('Success');
                        } else {
                          return const Text('Error');
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

/* 
if (result != null){Center(
                      child: (entrant.isScanned.value == true &&
                              entrant.errorChecker(result!.code.toString()) ==
                                  true)
                          ? const Text('Success')
                          : const Text('Error'))}else{TextWidget(
                      text: 'Scan QR Code',
                      color: blackColor,
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    )} 
 */
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

  void _onQRViewCreated(QRViewController controller) {
    this.controller = controller;
    controller.scannedDataStream.listen((scanData) {
      setState(() {
        result = scanData;
        print("_onQRViewCreated");
        print(result);
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
    controller?.dispose();
    super.dispose();
  }
}
