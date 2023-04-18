import 'package:flutter/material.dart';
import 'package:invoice_app/invoice_Screen/variable_producte.dart';

class Home_screen extends StatefulWidget {
  const Home_screen({Key key}) : super(key: key);

  @override
  State<Home_screen> createState() => _Home_screenState();
}

class _Home_screenState extends State<Home_screen> {
  Color myColor = Colors.black45;

  TextStyle titleStyle = TextStyle(fontSize: 16, fontWeight: FontWeight.bold);
  TextStyle textStyle = TextStyle(fontSize: 12);

  List<Product> product =[
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
      title: "Samsung Galaxy Book",
      description: "Samsung Galaxy Book S (2020) Laptop With Intel Lakefield Chip, 8GB of RAM Launched",
      price: 1499,
      discountPercentage: 4.15,
      rating: 4.25,
      stock: 50,
      brand: "Samsung",
      category: "Laptops",
      thumbnails:  "https://i.dummyjson.com/data/products/7/thumbnail.jpg",
      images: "https://i.dummyjson.com/data/products/7/1.jpg",
    ),
    Product(
      id: 3,
      title: "Perfume Oil",
      description: "Mega Discount, Impression of Acqua Di Gio by GiorgioArmani concentrated attar perfume Oil",
      price: 13,
      discountPercentage: 8.4,
      rating: 4.26,
      stock: 65,
      brand: "Impression of Acqua Di Gio",
      category: "Fragrances",
      thumbnails: "https://i.dummyjson.com/data/products/11/thumbnail.jpg",
      images: "https://i.dummyjson.com/data/products/11/1.jpg",
    ),
    Product(
      id: 4,
      title: "Key Holder",
      description: "Attractive DesignMetallic materialFour key hooksReliable & DurablePremium Quality",
      price: 30,
      discountPercentage: 2.92,
      rating: 4.92,
      stock: 54,
      brand: "Golden",
      category: "Home-decoration",
      thumbnails: "https://i.dummyjson.com/data/products/30/thumbnail.jpg",
      images: "https://i.dummyjson.com/data/products/30/1.jpg",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: myColor,
        foregroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.menu_rounded),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).pushNamed('add_cart_page');
            },
            icon: Icon(Icons.shopping_cart_rounded),
          ),
        ],
        centerTitle: true,
        title: const Text("Invoice_app"),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              width: double.infinity,
              color: myColor,
              child: Row(
                children: [
                  SizedBox(width: 110),
                  Text(
                    "All Categories",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SingleChildScrollView(
            child: Expanded(
              flex: 13,
              child: Container(
                color: Colors.white,
                padding: const EdgeInsets.all(18),
                child: Column(
                  children: [
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).pushNamed('smartphone_page');
                            },
                            child: Card(
                              elevation: 4,
                              shadowColor: myColor,
                              child: Container(
                                height: 150,
                                width: 300,
                                color: Colors.white,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    Container(
                                      height: 80,
                                      child: Image.network("${product[0].thumbnails}"),
                                    ),
                                    Text("${product[0].category}", style: textStyle,),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ]
                    ),
                    Row(mainAxisAlignment: MainAxisAlignment.spaceAround,children: [                        GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushNamed('laptop_page');
                      },
                      child: Card(
                        elevation: 4,
                        shadowColor: myColor,
                        child: Container(
                          height: 150,
                          width: 300,
                          color: Colors.white,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                height: 80,
                                child: Image.network("${product[1].thumbnails}"),
                              ),
                              Text("${product[1].category}", style: textStyle,),
                            ],
                          ),
                        ),
                      ),
                    )],),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).pushNamed('fragrances_page');
                            },
                            child: Card(
                              elevation: 4,
                              shadowColor: myColor,
                              child: Container(
                                height: 150,
                                width: 300,
                                color: Colors.white,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    Container(
                                      height: 80,
                                      child: Image.network("${product[2].thumbnails}"),
                                    ),
                                    Text("${product[2].category}", style: textStyle,),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ]
                    ),
                    Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [                        GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushNamed('home_decoration_page');
                      },
                      child: Card(
                        elevation: 4,
                        shadowColor: myColor,
                        child: Container(
                          height: 150,
                          width: 300,
                          color: Colors.white,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                height: 80,
                                child: Image.network("${product[3].thumbnails}"),
                              ),
                              Text("${product[3].category}", style: textStyle,),
                            ],
                          ),
                        ),
                      ),
                    )],),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

