import 'package:flutter/material.dart';
import 'package:simple_barcode_scanner/simple_barcode_scanner.dart';

class BarCodeScreen extends StatefulWidget {
  BarCodeScreen({super.key});

  TextEditingController controller = TextEditingController();

  @override
  State<BarCodeScreen> createState() => _BarCodeScreenState();
}

class _BarCodeScreenState extends State<BarCodeScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Color(0xFFf5f6fa),
      appBar: AppBar(
        backgroundColor: Color(0xFF262a33),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_ios_new,
              color: Colors.white,
            )),
        title: Text(
          "Elite Design",
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              color: Colors.white,
              icon: Icon(Icons.shopping_cart)),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 12),
        child: Column(
          children: [
            SizedBox(
                height: 40,
                child: TextField(
                  autocorrect: false,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                  keyboardType: TextInputType.number,
                  controller: widget.controller,
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(horizontal: 24),
                      prefixIcon: Icon(Icons.barcode_reader),
                      border:
                          OutlineInputBorder(borderSide: BorderSide(width: .5)),
                      focusedBorder:
                          OutlineInputBorder(borderSide: BorderSide(width: .5)),
                      hintText: "Shtrix kod...",
                      hintStyle: TextStyle(
                        color: Colors.grey,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                      suffixIcon: IconButton(
                          onPressed: () {}, icon: Icon(Icons.done_all))),
                )),
            SizedBox(height: 48),
            SizedBox(
                width: 150,
                height: 150,
                child: Image.asset('assets/images/splash_image.webp')),
            SizedBox(height: 24),

            InkWell(
              onTap: () async {
                String? res = await SimpleBarcodeScanner.scanBarcode(
                  context,
                  barcodeAppBar: const BarcodeAppBar(
                    appBarTitle: 'bekor qilish',
                    centerTitle: false,
                    enableBackButton: true,
                    backButtonIcon: Icon(Icons.arrow_back_ios),
                  ),
                  isShowFlashIcon: true,
                  delayMillis: 2000,
                  cameraFace: CameraFace.back,
                );
                widget.controller.text = res ?? "-1";
              },
              child: Container(
                width: size,
                height: 50,
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.all(Radius.circular(12))),
                child: Center(
                  child: Text(
                    "Kamerani ochish",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
