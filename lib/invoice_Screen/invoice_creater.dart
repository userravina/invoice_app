

import 'package:invoice_app/invoice_Screen/variable_producte.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';

Future generateInvoice() async {
  final pdf = pw.Document();


  pw.TextStyle titleStyle = pw.TextStyle(
    fontWeight: pw.FontWeight.bold,
    fontSize:24,
  );

  pw.TextStyle textStyle = pw.TextStyle(
    fontSize:18,
  );

  pw.TextStyle dispTextStyle = pw.TextStyle(
    fontSize:14,
  );


  pdf.addPage(
      pw.Page(
          margin: pw.EdgeInsets.all(24),
          pageFormat: PdfPageFormat.a4,
          build: (
              pw.Context context) {
            return pw.Container(
              height: double.infinity,
              width: double.infinity,
              child: pw.Column(
                children: [
                  pw.Row(
                    children: [
                      pw.Text("MyShopping",
                        style: pw.TextStyle(
                          fontWeight: pw.FontWeight.bold,
                          fontSize: 26,),
                      ),
                    ],
                  ),
                  pw.SizedBox(height: 30),
                  pw.Center(
                    child: pw.Text("BILL", style: textStyle),
                  ),
                  pw.SizedBox(height: 30),
                  pw.Divider(),
                  pw.Row(
                    mainAxisAlignment: pw.MainAxisAlignment.spaceEvenly,
                    children: [
                      pw.Text("Product", style: textStyle),
                      pw.SizedBox(width: 30),
                      pw.Text("Quantity", style: textStyle),
                      pw.Text("Price", style: textStyle),
                      pw.Text("Total", style: textStyle),
                    ],
                  ),
                  pw.Divider(),
                  pw.Row(
                    mainAxisAlignment: pw.MainAxisAlignment.spaceEvenly,
                    children: [
                      pw.Column(
                          mainAxisAlignment: pw.MainAxisAlignment.spaceEvenly,
                          children: [
                            pw.Text("${addCart[0].title}", style: textStyle),
                            pw.Text("${addCart[1].title}", style: textStyle),
                            pw.Text("${addCart[2].title}", style: textStyle),
                            pw.Text("${addCart[3].title}", style: textStyle),
                          ]
                      ),
                      pw.SizedBox(width: 16),
                      pw.Column(
                          mainAxisAlignment: pw.MainAxisAlignment.spaceEvenly,
                          children: [
                            pw.Text("1", style: textStyle),
                            pw.Text("1", style: textStyle),
                            pw.Text("1", style: textStyle),
                            pw.Text("1", style: textStyle),
                          ]
                      ),
                      pw.SizedBox(width: 16),
                      pw.Column(
                          mainAxisAlignment: pw.MainAxisAlignment.spaceEvenly,
                          children: [
                            pw.Text("${addCart[0].price}", style: textStyle),
                            pw.Text("${addCart[1].price}", style: textStyle),
                            pw.Text("${addCart[2].price}", style: textStyle),
                            pw.Text("${addCart[3].price}", style: textStyle),
                          ]
                      ),
                      pw.SizedBox(width: 16),
                      pw.Column(
                          mainAxisAlignment: pw.MainAxisAlignment.spaceEvenly,
                          children: [
                            pw.Text("${addCart[0].price}", style: textStyle),
                            pw.Text("${addCart[1].price}", style: textStyle),
                            pw.Text("${addCart[2].price}", style: textStyle),
                            pw.Text("${addCart[3].price}", style: textStyle),
                          ]
                      ),
                    ],
                  ),
                  pw.Divider(),
                  pw.Text("Total Amount :- ${addCart[0].price + addCart[1].price + addCart[2].price + addCart[3].price}", style: titleStyle),
                  pw.Divider(),
                  pw.SizedBox(height: 80),
                  pw.Text("Thanks For Buying Our Products...!", style: titleStyle),
                ],
              ),
            );
          })
  );

  await Printing.layoutPdf(
    onLayout: (format) => pdf.save(),
  );
}

