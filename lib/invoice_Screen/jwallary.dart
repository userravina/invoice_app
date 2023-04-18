import 'package:flutter/material.dart';
import 'package:invoice_app/invoice_Screen/variable_producte.dart';

class jwallary extends StatefulWidget {
  const jwallary({Key key}) : super(key: key);

  @override
  State<jwallary> createState() => _jwallaryState();
}

class _jwallaryState extends State<jwallary> {
  TextStyle titleStyle = TextStyle(fontSize: 16, fontWeight: FontWeight.bold);
  TextStyle textStyle = TextStyle(fontSize: 12);
  TextStyle priceStyle = TextStyle(fontSize: 14);

  List<Product> fragrances = [
    Product(
      id: 1,
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
      id: 2,
      title:  "Brown Perfume",
      description: "Royal_Mirage Sport Brown Perfume for Men & Women - 120ml",
      price: 40,
      discountPercentage: 15.66,
      rating: 4,
      stock: 52,
      brand: "Royal_Mirage",
      category: "Fragrances",
      thumbnails: "https://i.dummyjson.com/data/products/12/thumbnail.jpg",
      images: "https://i.dummyjson.com/data/products/12/1.jpg",
    ),
    Product(
      id: 3,
      title: "Fog Scent Xpressio Perfume",
      description: "Product details of Best Fog Scent Xpressio Perfume 100ml For Men cool long lasting perfumes for Men",
      price: 13,
      discountPercentage: 8.14,
      rating: 4.59,
      stock: 61,
      brand: "Fog Scent Xpressio",
      category: "Fragrances",
      thumbnails: "https://i.dummyjson.com/data/products/13/thumbnail.webp",
      images: "https://i.dummyjson.com/data/products/13/1.jpg",
    ),
    Product(
      id: 4,
      title: "Non-Alcoholic\nConcentrated\nPerfume Oil",
      description: "Original Al Munakh® by Mahal Al Musk | Our Impression of Climate | 6ml Non-Alcoholic Concentrated Perfume Oil",
      price: 120,
      discountPercentage: 15.6,
      rating: 4.21,
      stock: 114,
      brand: "Al Munakh",
      category: "Fragrances",
      thumbnails: "https://i.dummyjson.com/data/products/14/thumbnail.jpg",
      images: "https://i.dummyjson.com/data/products/14/1.jpg",
    ),
    Product(
      id: 5,
      title: "Eau De Perfume Spray",
      description: "Genuine  Al-Rehab spray perfume from UAE/Saudi Arabia/Yemen High Quality",
      price: 30,
      discountPercentage: 10.99,
      rating: 4.7,
      stock: 105,
      brand: "Lord - Al-Rehab",
      category: "Fragrances",
      thumbnails: "https://i.dummyjson.com/data/products/15/thumbnail.jpg",
      images: "https://i.dummyjson.com/data/products/15/1.jpg",
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
              Text("FRAGRANCES", style: titleStyle,),
              Column(
                children: fragrances.map((e) => GestureDetector(
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

