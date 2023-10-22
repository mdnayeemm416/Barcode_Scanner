import 'package:barcode_scanner/Features/EmailVerifiedPage/VerifiedSuccesspage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

class BarcodeScannerWidget extends StatefulWidget {
  const BarcodeScannerWidget({super.key});

  @override
  State<BarcodeScannerWidget> createState() => _BarcodeScannerWidgetState();
}

class _BarcodeScannerWidgetState extends State<BarcodeScannerWidget> {
  String? ScanResult;
  @override
  Widget build(BuildContext context) {
    double Height = MediaQuery.of(context).size.height;
    double Width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        height: Height,
        width: Width,
        child: Column(children: [
          Container(
            padding: EdgeInsets.only(
                top: Height * .01, left: Width * .1, right: Width * .1),
            margin: EdgeInsets.only(top: Height * .1, left: 20, right: 20),
            height: Height * .18,
            width: Width,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20), color: Colors.black12),
            child: Column(children: [
              Text(
                "Scan BarCode",
                style: TextStyle(fontSize: 22),
              ),
              SizedBox(
                height: Height * .01,
              ),
              Text(
                "Position the barcode within the frame for scanning",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14,
                ),
              )
            ]),
          ),
          SizedBox(
            height: Height * .1,
          ),
          Container(
            height: Height * .3,
            width: Width * .7,
            child: Image.network(
                "https://cdn1.iconfinder.com/data/icons/qr-code-2/65/15-512.png"),
          ),
          SizedBox(
            height: Height * .1,
          ),
          Container(
            width: Width * .4,
            height: Height * .08,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Colors.purple.shade100, onPrimary: Colors.black),
                onPressed: ScanBarcode,
                child: Text(" Start Scan")),
          ),
          Container(
            child: Text(ScanResult == null ? "Scan Reslut" : "$ScanResult"),
          )
        ]),
      ),
    );
  }

  Future ScanBarcode() async {
    String scanresult;

    try {
      scanresult = await FlutterBarcodeScanner.scanBarcode(
          "#ff666", "cancel", true, ScanMode.BARCODE);
    } on PlatformException {
      scanresult = " Not found";
    }
    if (!mounted) return;

    setState(() {
      this.ScanResult = scanresult;
    });
  }
}
