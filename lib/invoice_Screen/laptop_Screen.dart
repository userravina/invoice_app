import 'package:flutter/material.dart';
import 'package:invoice_app/invoice_Screen/variable_producte.dart';

class Laptop extends StatefulWidget {
  const Laptop({Key key}) : super(key: key);

  @override
  State<Laptop> createState() => _LaptopState();
}

class _LaptopState extends State<Laptop> {
  TextStyle titleStyle = TextStyle(fontSize: 16, fontWeight: FontWeight.bold);
  TextStyle textStyle = TextStyle(fontSize: 12);
  TextStyle priceStyle = TextStyle(fontSize: 14);

  List<Product> laptops = [
    Product(
      id: 1,
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
      id: 2,
      title: "MacBook Pro",
      description: "MacBook Pro 2021 with mini-LED display may launch between September, November",
      price: 1749,
      discountPercentage: 11.02,
      rating: 4.57,
      stock: 83,
      brand: "Apple",
      category: "Laptops",
      thumbnails: "https://i.dummyjson.com/data/products/6/thumbnail.png",
      images: "https://i.dummyjson.com/data/products/6/1.png",
    ),
    Product(
      id: 3,
      title: "Microsoft Surface\nLaptop 4",
      description: "Style and speed. Stand out on HD video calls backed by Studio Mics. Capture ideas on the vibrant touchscreen.",
      price: 1499,
      discountPercentage: 10.23,
      rating: 4.43,
      stock: 68,
      brand: "Microsoft Surface",
      category: "Laptops",
      thumbnails: "https://i.dummyjson.com/data/products/8/thumbnail.jpg",
      images: "https://i.dummyjson.com/data/products/8/1.jpg",
    ),
    Product(
      id: 4,
      title: "Infinix INBOOK",
      description: "Infinix Inbook X1 Ci3 10th 8GB 256GB 14 Win10 Grey – 1 Year Warranty",
      price: 1099,
      discountPercentage: 11.83,
      rating: 4.54,
      stock: 96,
      brand: "Infinix",
      category: "Laptops",
      thumbnails: "https://i.dummyjson.com/data/products/9/thumbnail.jpg",
      images: "https://i.dummyjson.com/data/products/9/1.jpg",
    ),
    Product(
      id: 5,
      title: "HP Pavilion\n15-DK1056WM",
      description: "HP Pavilion 15-DK1056WM Gaming Laptop 10th Gen Core i5, 8GB, 256GB SSD, GTX 1650 4GB, Windows 10",
      price: 1099,
      discountPercentage: 6.18,
      rating: 4.43,
      stock: 89,
      brand: "HP Pavilion",
      category: "Laptops",
      thumbnails: "https://i.dummyjson.com/data/products/10/thumbnail.jpeg",
      images: "https://i.dummyjson.com/data/products/10/1.jpg",
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
        title: const Text("MyShopping"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("LAPTOPS", style: titleStyle,),
              Column(
                children: laptops.map((e) => GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushNamed('details_page', arguments: e);
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
