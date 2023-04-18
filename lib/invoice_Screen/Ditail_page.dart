import 'package:flutter/material.dart';
import 'package:invoice_app/invoice_Screen/variable_producte.dart';

class Ditail_page extends StatefulWidget {
  const Ditail_page({Key key}) : super(key: key);

  @override
  State<Ditail_page> createState() => _Ditail_pageState();
}

class _Ditail_pageState extends State<Ditail_page> {
  TextStyle titleStyle = TextStyle(fontSize: 16, fontWeight: FontWeight.bold);
  TextStyle textStyle = TextStyle(fontSize: 12);
  TextStyle priceStyle = TextStyle(fontSize: 14);
  @override
  Widget build(BuildContext context) {
    dynamic data = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black45,
        foregroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.menu_rounded),
        ),
        centerTitle: true,
        title: const Text("Details"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Details :- ", style: titleStyle,),
              const SizedBox(height: 16),
              Container(
                alignment: Alignment.center,
                height: 200,
                child: Image.network("${data.images}"),
              ),
              const SizedBox(height: 20),
              Text("${data.title}", style: titleStyle,),
              const Divider(),
              Text("Category :- ${data.category}", style: textStyle,),
              const Divider(),
              Text("Brand :- ${data.brand}", style: textStyle,),
              const Divider(),
              Text("Description :- ${data.description}", style: textStyle,),
              const Divider(),
              Text("Price :- 💲 ${data.price}", style: priceStyle,),
              const Divider(),
              Text("Discount :- ${data.discountPercentage} %", style: priceStyle,),
              const Divider(),
              Text("Rating :- ${data.rating}", style: priceStyle,),
              const Divider(),
              Text("Stock :- ${data.stock}", style: priceStyle,),
              const Divider(),
              const SizedBox(height: 20),
              Center(
                child: SizedBox(
                  width: 250,
                  child: ElevatedButton(
                    onPressed: () {
                      addCart.add(data);
                      Navigator.pushNamed(context, 'add_cart_page',arguments: addCart);
                    },
                    child: Text("ADD CART"),
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

