import 'package:flutter/material.dart';
import 'package:invoice_app/invoice_Screen/invoice_creater.dart';
import 'package:invoice_app/invoice_Screen/variable_producte.dart';

class add_cart extends StatefulWidget {
  const add_cart({Key key}) : super(key: key);

  @override
  State<add_cart> createState() => _add_cartState();
}

class _add_cartState extends State<add_cart> {
  TextStyle titleStyle = TextStyle(fontSize: 16, fontWeight: FontWeight.bold);
  TextStyle textStyle = TextStyle(fontSize: 12);
  TextStyle priceStyle = TextStyle(fontSize: 14);

  int count = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black45,
        foregroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.menu_rounded),
        ),
        centerTitle: true,
        title: const Text("MyShopping"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("MY CART", style: titleStyle,),
              Column(
                children: addCart.map((e) =>
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushNamed(
                            "details_page", arguments: e);
                      },
                      child: Card(
                        elevation: 4, color: Colors.grey.shade200,
                        child: Container(
                          height: 150,
                          width: double.infinity,
                          child: Row(
                            children: [
                              Container(
                                width: 150,
                                child: Image.network("${e.images}"),
                              ),
                              const Spacer(),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text("${e.title}", style: textStyle,),
                                  Text("💲 ${e.price}", style: textStyle,),
                                  Row(
                                    children: [
                                      FloatingActionButton(
                                        mini: true,
                                        onPressed: () {
                                          setState(() {
                                            if (count > 1) {
                                              count--;
                                            } else {
                                              count = 1;
                                            }
                                          });
                                        },
                                        child: Text(
                                          "-", style: TextStyle(fontSize: 22),),
                                      ),
                                      Container(
                                        alignment: Alignment.center,
                                        width: 35,
                                        height: 20,
                                        child: Text("${count}"),
                                      ),
                                      FloatingActionButton(
                                        mini: true,
                                        onPressed: () {
                                          setState(() {
                                            count++;
                                          });
                                        },
                                        child: Icon(Icons.add),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              const Spacer(),
                            ],
                          ),
                        ),
                      ),
                    )).toList(),
              ),
              Center(
                child: SizedBox(
                  width: 250,
                  child: ElevatedButton(
                    onPressed: () {
                      generateInvoice();
                    },
                    child: Text("BUY NOW"),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


