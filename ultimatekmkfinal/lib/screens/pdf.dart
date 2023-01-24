//@dart = 2.9
import 'dart:io';
import 'dart:typed_data';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:pdf/widgets.dart';
import 'package:open_file/open_file.dart';
import 'package:universal_html/html.dart' as html;

class PdfInvoiceApi {
  static Future<html.Blob> generate(Map mp) async {
    var data = await rootBundle.load("assets/fonts/Arial.ttf");
    var myFont = Font.ttf(data);

    describ({String value}) {
      return Container(
        width: 10 * PdfPageFormat.mm,
        height: 10 * PdfPageFormat.mm,
        child: Padding(
          padding: EdgeInsets.all(4),
          child: Column(
            mainAxisAlignment: pw.MainAxisAlignment.center,
            children: [
              Text(value,
                  style:
                      TextStyle(fontSize: 16, fontWeight: pw.FontWeight.bold),
                  textDirection: pw.TextDirection.ltr),
              SizedBox(width: 5 * PdfPageFormat.mm),
            ],
          ),
        ),
      );
    }

    Widget costumer() {
      return Container(
        margin: EdgeInsets.all(0),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Column(children: <Widget>[
                Center(
                    child: Text('pH-lutter',
                        style: TextStyle(
                            fontWeight: pw.FontWeight.bold, fontSize: 30))),
              ]),
            ]),
      );
    }

    Widget lastyears() {
      return Container(
        margin: EdgeInsets.only(top: 10, bottom: 10),
        child: Table(
          border: TableBorder.all(style: BorderStyle.solid, width: 2),
          children: [
            TableRow(children: <Widget>[
              describ(value: 'The Trail'),
              describ(value: 'Number of Moles'),
              describ(value: 'pH of Water'),
            ]),
            TableRow(children: [
              describ(value: "1st"),
              describ(value: "63.3 \u00B5 Mole"),
              describ(value: "4.20"),
            ]),
            TableRow(children: [
              describ(value: "2nd"),
              describ(value: "6.64 \u00B5 Mole"),
              describ(value: "4.17"),
            ]),
            TableRow(children: [
              describ(value: "3rd"),
              describ(value: "7.3 \u00B5 Mole"),
              describ(value: "4.15"),
            ]),
          ],
        ),
      );
    }

    Widget predicted() {
      return Container(
        margin: EdgeInsets.only(top: 10, bottom: 10),
        child: Table(
          border: TableBorder.all(style: BorderStyle.solid, width: 2),
          children: [
            TableRow(children: <Widget>[
              describ(value: 'Predicted Trail'),
              describ(value: 'Number of Moles'),
              describ(value: 'The predicted pH'),
            ]),
            TableRow(children: [
              describ(value: "1"),
              describ(value: "${mp["mole"]}" + " \u00B5 Mole"),
              describ(value: mp["res"]),
            ]),
          ],
        ),
      );
    }

    Widget title(String x) {
      return Row(
        mainAxisAlignment: pw.MainAxisAlignment.start,
        children: [
          Text(x,
              style: TextStyle(fontSize: 20, fontWeight: pw.FontWeight.bold),
              textDirection: pw.TextDirection.ltr),
          SizedBox(width: 2 * PdfPageFormat.mm),
        ],
      );
    }

    Widget content(String x) {
      return Row(
        mainAxisAlignment: pw.MainAxisAlignment.start,
        children: [
          Text(x,
              style: TextStyle(fontSize: 14),
              textDirection: pw.TextDirection.ltr),
          SizedBox(width: 2 * PdfPageFormat.mm),
        ],
      );
    }

    final ByteData bytes = await rootBundle.load('assets/logo.png');
    final ByteData bytes2 = await rootBundle.load('assets/graph1.png');
    final ByteData bytes3 = await rootBundle.load('assets/graph2.png');
    final Uint8List byteList = bytes.buffer.asUint8List();
    final Uint8List byteList2 = bytes2.buffer.asUint8List();
    final Uint8List byteList3 = bytes3.buffer.asUint8List();

    Widget frameShape(int wid) {
      return Row(
        mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 10.0),
            child: pw.Image(
              pw.MemoryImage(
                byteList,
              ),
              width: wid * PdfPageFormat.mm,
            ),
          ),
          SizedBox(width: 2 * PdfPageFormat.mm),
        ],
      );
    }
    Widget frameShape2(int wid) {
      return Row(
        mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 10.0),
            child: pw.Image(
              pw.MemoryImage(
                byteList2,
              ),
              width: wid * PdfPageFormat.mm,
            ),
          ),
          SizedBox(width: 2 * PdfPageFormat.mm),
        ],
      );
    }
    Widget frameShape3(int wid) {
      return Row(
        mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 10.0),
            child: pw.Image(
              pw.MemoryImage(
                byteList3,
              ),
              width: wid * PdfPageFormat.mm,
            ),
          ),
          SizedBox(width: 2 * PdfPageFormat.mm),
        ],
      );
    }

    final pdf = Document();
    pdf.addPage(pw.Page(
        build: (pw.Context context) => Column(children: <Widget>[
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                costumer(),
                frameShape(35),
              ]),
              title("The previous data:"),
              lastyears(),
              title("The predicted data:"),
              predicted(),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [frameShape2(80), frameShape3(80)]),
              SizedBox(height: 30),
              content(
                  'Looking at the tables found in this file, we can see the values of past trials. \n'),
              content(
                  'of subjecting distinct amounts of sulfur dioxide to water and the resulting pH.  \n'),
              content(
                  'equation and rate to get the desired pH value. As seen, when the amount of\n'),
              content(
                  'dioxide increases, the values of pH decrease, which indicates the presence of \n'),
              content(
                  'an inverse relationship between them. For that, adding ${mp["mole"]} moles of sulfur \n'),
              content(
                  'dioxide would decrease the pH of water from its initial value of 7.2 to ${mp["res"]}. \n'),
            ])));

    return PdfApi.saveDocument(name: 'pH-lutter.pdf', pdf: pdf);
  }
}

class PdfApi {
  static Future<html.Blob> saveDocument({
    String name,
    Document pdf,
  }) async {
    final bytes = await pdf.save();
    html.Blob blob = html.Blob([bytes], 'application/pdf');

    //final dir = await getApplicationDocumentsDirectory();
    //final file = File('${dir.path}/$name');

    //await file.writeAsBytes(byte);

    return blob;
  }

  static Future openFile(File file) async {
    final url = file.path;

    await OpenFile.open(url);
  }
}
