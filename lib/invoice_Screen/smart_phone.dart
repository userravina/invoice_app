import 'package:flutter/material.dart';
import 'package:invoice_app/invoice_Screen/variable_producte.dart';

class Smart_phone extends StatefulWidget {
  const Smart_phone({Key key}) : super(key: key);

  @override
  State<Smart_phone> createState() => _Smart_phoneState();
}

class _Smart_phoneState extends State<Smart_phone> {
  TextStyle titleStyle = TextStyle(fontSize: 16, fontWeight: FontWeight.bold);
  TextStyle textStyle = TextStyle(fontSize: 12);
  TextStyle priceStyle = TextStyle(fontSize: 14);

  List<Product> smartphones = [
    Product(
      id: 1,
      title: "iPhone 9",
      description: "An apple mobile which is nothing like apple",
      price: 549,
      discountPercentage: 12.96,
      rating: 4.69,
      stock: 94,
      brand: "Apple",
      category: "Smartphones",
      thumbnails: "https://i.dummyjson.com/data/products/1/thumbnail.jpg",
      images: "https://i.dummyjson.com/data/products/1/1.jpg",
    ),
    Product(
      id: 2,
      title: "iPhone X",
      description: "SIM-Free, Model A19211 6.5-inch Super Retina HD display with OLED technology A12 Bionic chip with ...",
      price: 899,
      discountPercentage: 17.94,
      rating: 4.44,
      stock: 34,
      brand: "Apple",
      category: "Smartphones",
      thumbnails: "https://i.dummyjson.com/data/products/2/thumbnail.jpg",
      images: "https://i.dummyjson.com/data/products/2/1.jpg",
    ),
    Product(
      id: 3,
      title: "Samsung Universe 9",
      description: "Samsung's new variant which goes beyond Galaxy to the Universe",
      price: 1249,
      discountPercentage: 15.46,
      rating: 4.09,
      stock: 36,
      brand: "Samsung",
      category: "Smartphones",
      thumbnails: "https://i.dummyjson.com/data/products/3/thumbnail.jpg",
      images: "https://i.dummyjson.com/data/products/3/1.jpg",
    ),
    Product(
      id: 4,
      title: "OPPOF19",
      description: "OPPO F19 is officially announced on April 2021.",
      price: 280,
      discountPercentage: 17.91,
      rating: 4.3,
      stock: 123,
      brand: "OPPO",
      category: "Smartphones",
      thumbnails: "https://i.dummyjson.com/data/products/4/thumbnail.jpg",
      images: "https://i.dummyjson.com/data/products/4/1.jpg",
    ),
    Product(
      id: 5,
      title: "Huawei P30",
      description: "Huawei’s re-badged P30 Pro New Edition was officially unveiled yesterday in Germany and now the device has made its way to the UK.",
      price: 499,
      discountPercentage: 10.58,
      rating: 4.09,
      stock: 32,
      brand: "Huawei",
      category: "Smartphones",
      thumbnails: "https://i.dummyjson.com/data/products/5/thumbnail.jpg",
      images: "https://i.dummyjson.com/data/products/5/1.jpg",
    ),
  ];

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
        title: const Text("Invoice_app"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("SMARTPHONES", style: titleStyle,),
              Column(
                children: smartphones.map((e) => GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushNamed("details_page", arguments: e);
                  },
                  child: Card(
                    elevation: 4,color: Colors.grey.shade300,
                    child: Container(
                      height: 150,
                      width: double.infinity,
                      child: Row(
                        children: [
                          Container(
                            width: 150,
                            height: double.infinity,
                            child: Image.network("${e.images}", fit: BoxFit.fill,),
                          ),
                          const Spacer(),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("${e.title}", style: textStyle,),
                              Text("💲 ${e.price}", style: textStyle,),
                            ],
                          ),
                          const Spacer(),
                        ],
                      ),
                    ),
                  ),
                )).toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

