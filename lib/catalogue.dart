import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class catalogue extends StatefulWidget {
  const catalogue({super.key});

  @override
  State<catalogue> createState() => _catalogueState();
}

class _catalogueState extends State<catalogue> {
  @override
  bool valueswitch = true;
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: const Text("Catalogue"),
            bottom: const TabBar(tabs: [
              Tab(
                text: "Product",
              ),
              Tab(
                text: "Catagories",
              ),
            ]),
          ),
          body: TabBarView(children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    ProductListWidget(
                      size: size,
                      valueswitch: valueswitch,
                      dressname: "Couch Potato |Women... ",
                      Price: "599",
                      image: "assets/images/tshirst.jpeg",
                    ),
                    const SizedBox(height: 18),
                    ProductListWidget(
                        size: size,
                        valueswitch: valueswitch,
                        dressname: "Couch Potato |Men| Bl... ",
                        Price: "799",
                        image: "assets/images/comboblahst.jpeg"),
                    const SizedBox(height: 18),
                    ProductListWidget(
                      size: size,
                      valueswitch: valueswitch,
                      dressname: "Mug | Explore ",
                      Price: "959",
                      image: "assets/images/mug.jpeg",
                    ),
                    const SizedBox(height: 18),
                    ProductListWidget(
                      size: size,
                      valueswitch: valueswitch,
                      dressname: "Combo Blashst 1| Pack ",
                      Price: "299",
                      image: "assets/images/comboblahst.jpeg",
                    ),
                    const SizedBox(height: 18),
                    ProductListWidget(
                      size: size,
                      valueswitch: valueswitch,
                      dressname: "Mug|Orcard... ",
                      Price: "499",
                      image: "assets/images/mug.jpeg",
                    ),
                    const SizedBox(height: 18),
                    ProductListWidget(
                      size: size,
                      valueswitch: valueswitch,
                      dressname: "Combo Blashst 2| Pack ",
                      Price: "799",
                      image: "assets/images/comboblahst.jpeg",
                    ),
                    const SizedBox(height: 18),
                    ProductListWidget(
                      size: size,
                      valueswitch: valueswitch,
                      dressname: "T-Shirt |Women... ",
                      Price: "799",
                      image: "assets/images/tshirst.jpeg",
                    ),
                    const SizedBox(height: 18),
                    ProductListWidget(
                      size: size,
                      valueswitch: valueswitch,
                      dressname: "Mug 2|Orcard... ",
                      Price: "799",
                      image: "assets/images/mug.jpeg",
                    ),
                    const SizedBox(height: 18),
                    ProductListWidget(
                      size: size,
                      valueswitch: valueswitch,
                      dressname: "Couch Potato |Women... ",
                      Price: "399",
                      image: "assets/images/tshirst.jpeg",
                    ),
                    const SizedBox(height: 18),
                    ProductListWidget(
                      size: size,
                      valueswitch: valueswitch,
                      dressname: "Bottle | Explore",
                      Price: "699",
                      image: "assets/images/bottle.jpeg",
                    ),
                    const SizedBox(height: 18),
                    ProductListWidget(
                      size: size,
                      valueswitch: valueswitch,
                      dressname: "Sports Shoes|Addidas",
                      Price: "599",
                      image: "assets/images/sportsshoes.jpeg",
                    ),
                    const SizedBox(height: 18),
                    ProductListWidget(
                      size: size,
                      valueswitch: valueswitch,
                      dressname: "Gadget | Mens ",
                      Price: "459",
                      image: "assets/images/gadgets.jpeg",
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.black38,
            )
          ]),
        ));
  }
}

class ProductListWidget extends StatelessWidget {
  const ProductListWidget({
    super.key,
    required this.size,
    required this.valueswitch,
    required this.dressname,
    required this.Price,
    required this.image,
  });

  final Size size;
  final bool valueswitch;
  final String dressname;
  final String Price;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: const [BoxShadow(blurRadius: 3, color: Colors.grey)],
          borderRadius: BorderRadius.circular(10)),
      padding: const EdgeInsets.only(top: 10, left: 10),
      width: size.width,
      height: 200,
      child: Column(children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(9),
              child: Flexible(
                child: Image.asset(
                  image,
                  width: 100,
                ),
              ),
            ),
            const SizedBox(width: 9),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      dressname,
                      style: GoogleFonts.poppins(fontSize: 17),
                    ),
                    const Icon(
                      Icons.more_vert,
                      color: Colors.black54,
                    )
                  ],
                ),
                const SizedBox(height: 5),
                const Text(
                  "1 piece ",
                  style: TextStyle(fontSize: 13),
                ),
                const SizedBox(height: 5),
                Text(
                  Price,
                  style: const TextStyle(
                      fontSize: 19, fontWeight: FontWeight.w600),
                ),
                const SizedBox(height: 5),
                Row(
                  children: [
                    const Text(
                      "In stock",
                      style: TextStyle(
                          color: Color.fromARGB(255, 3, 123, 7),
                          fontWeight: FontWeight.w500,
                          fontSize: 16),
                    ),
                    const SizedBox(width: 130),
                    Switch(value: valueswitch, onChanged: (s) {})
                  ],
                ),
              ],
            )
          ],
        ),
        const Divider(
          color: Colors.grey,
          thickness: 1,
          indent: 20,
          endIndent: 20,
        ),
      ]),
    );
  }
}
