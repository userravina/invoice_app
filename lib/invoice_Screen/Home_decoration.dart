import 'package:flutter/material.dart';
import 'package:invoice_app/invoice_Screen/variable_producte.dart';

class Home_decoration extends StatefulWidget {
  const Home_decoration({Key key}) : super(key: key);

  @override
  State<Home_decoration> createState() => _Home_decorationState();
}

class _Home_decorationState extends State<Home_decoration> {
  TextStyle titleStyle = TextStyle(fontSize: 16, fontWeight: FontWeight.bold);
  TextStyle textStyle = TextStyle(fontSize: 12);
  TextStyle priceStyle = TextStyle(fontSize: 14);

  List<Product> homeDecoration = [
    Product(
      id: 1,
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
    Product(
      id: 2,
      title: "Plant Hanger For Home",
      description: "Boho Decor Plant Hanger For Home Wall Decoration Macrame Wall Hanging Shelf",
      price: 41,
      discountPercentage: 17.86,
      rating: 4.08,
      stock: 131,
      brand: "Boho Decor",
      category: "Home-decoration",
      thumbnails: "https://i.dummyjson.com/data/products/26/thumbnail.jpg",
      images: "https://i.dummyjson.com/data/products/26/1.jpg",
    ),
    Product(
      id: 3,
      title: "Flying Wooden Bird",
      description: "Package Include 6 Birds with Adhesive Tape Shape: 3D Shaped Wooden Birds Material: Wooden MDF, Laminated 3.5mm",
      price: 51,
      discountPercentage: 15.58,
      rating: 4.41,
      stock: 17,
      brand: "Flying Wooden",
      category: "Home-decoration",
      thumbnails: "https://i.dummyjson.com/data/products/27/thumbnail.webp",
      images: "https://i.dummyjson.com/data/products/27/1.jpg",
    ),
    Product(
      id: 4,
      title: "3D Embellishment Art Lamp",
      description: "3D led lamp sticker Wall sticker 3d wall art light on/off button  cell operated (included)",
      price: 20,
      discountPercentage: 16.49,
      rating: 4.82,
      stock: 54,
      brand: "LED Lights",
      category: "Home-decoration",
      thumbnails: "https://i.dummyjson.com/data/products/28/thumbnail.jpg",
      images: "https://i.dummyjson.com/data/products/28/1.jpg",
    ),
    Product(
      id: 5,
      title: "Handcraft Chinese style",
      description: "Handcraft Chinese style art luxury palace hotel villa mansion home decor ceramic vase with brass fruit plate",
      price: 60,
      discountPercentage: 15.34,
      rating: 4.44,
      stock: 7,
      brand: "luxury palace",
      category: "Home-decoration",
      thumbnails: "https://i.dummyjson.com/data/products/29/thumbnail.webp",
      images: "https://i.dummyjson.com/data/products/29/1.jpg",
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
              Text("HOME-DECORATION", style: titleStyle,),
              Column(
                children: homeDecoration.map((e) => GestureDetector(
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

