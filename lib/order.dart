import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class Order extends StatefulWidget {
  const Order({super.key});

  @override
  State<Order> createState() => _OrderState();
}

class _OrderState extends State<Order> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Order #1688068",
        ),
        leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.arrow_back,
              size: 30,
            )),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                children: [
                  Text(
                    "May 31,05:42 PM",
                    style: GoogleFonts.poppins(fontSize: 19),
                  ),
                  Spacer(),
                  CircleAvatar(radius: 10),
                  SizedBox(width: 10),
                  Text(
                    "Delivered ",
                    style: GoogleFonts.poppins(fontSize: 15),
                  ),
                ],
              ),
            ),
            const Divider(
              color: Colors.grey,
              thickness: 1,
              indent: 20,
              endIndent: 20,
            ),
            SizedBox(height: 10),
            const Padding(
              padding: EdgeInsets.only(left: 14, right: 14),
              child: Row(
                children: [
                  Text(
                    "1 ITEM",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                  ),
                  Spacer(),
                  Row(
                    children: [
                      Icon(
                        Icons.text_snippet_outlined,
                        color: Colors.blue,
                      ),
                      SizedBox(width: 10),
                      Text(
                        "RECEIPT ",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                            color: Colors.blueAccent),
                      )
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 15),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: ClipRRect(
                      child: Image.asset(
                        "assets/images/w6.1.jpeg",
                        width: 90,
                      ),
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          "Explore | Men |Navy Blue",
                          style: GoogleFonts.poppins(fontSize: 19),
                        ),
                      ],
                    ),
                    const Text(
                      "1 piece",
                      style: TextStyle(fontSize: 17),
                    ),
                    const Text(
                      "Size XL",
                      style: TextStyle(fontSize: 17),
                    ),
                    SizedBox(height: 5),
                    const Row(
                      children: [
                        Icon(
                          Icons.looks_one_outlined,
                          color: Colors.blueAccent,
                        ),
                        Text(
                          "x ₹799 ",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w500),
                        ),
                        SizedBox(width: 160),
                        Text("₹799",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w500))
                      ],
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 15),
            const Divider(
              color: Colors.grey,
              thickness: 1,
              indent: 20,
              endIndent: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                children: [
                  Text("Item Total",
                      style: GoogleFonts.poppins(
                          fontSize: 16, fontWeight: FontWeight.w400)),
                  Spacer(),
                  const Text("₹799",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                children: [
                  Text("Delivery ",
                      style: GoogleFonts.poppins(
                          fontSize: 16, fontWeight: FontWeight.w400)),
                  Spacer(),
                  const Text("FREE",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: Colors.green)),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                children: [
                  Text("Grand Total ",
                      style: GoogleFonts.poppins(
                          fontSize: 17, fontWeight: FontWeight.w600)),
                  Spacer(),
                  const Text("₹799",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w700)),
                ],
              ),
            ),
            SizedBox(height: 15),
            const Divider(
              color: Colors.grey,
              thickness: 1,
              indent: 20,
              endIndent: 20,
            ),
            const Padding(
              padding: EdgeInsets.all(10),
              child: Row(
                children: [
                  Text("CUSTOMER DETAILS",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                          color: Colors.grey)),
                  Spacer(),
                  Icon(
                    Icons.share_outlined,
                    color: Colors.blue,
                  ),
                  SizedBox(width: 10),
                  Text("SHARE",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Colors.blue)),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 10),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text("Deepa",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              color: Colors.black)),
                    ],
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 10, right: 10),
              child: Row(
                children: [
                  Text("+91-7829000847",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                          color: Colors.grey)),
                  Spacer(),
                  Icon(
                    FontAwesomeIcons.phone,
                    color: Colors.blue,
                  ),
                  SizedBox(width: 10),
                  Icon(
                    FontAwesomeIcons.whatsapp,
                    color: Colors.green,
                    size: 35,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                children: [
                  Text(
                    "Address",
                    style: GoogleFonts.poppins(
                        fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Row(
                children: [
                  Text("D 1101 Chartered Beverly",
                      style: GoogleFonts.poppins(
                          fontSize: 16, fontWeight: FontWeight.w400)),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                children: [
                  Text("Hills ,Subramanyapura P.O",
                      style: GoogleFonts.poppins(
                          fontSize: 16, fontWeight: FontWeight.w400)),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                children: [
                  Text("City ",
                      style: GoogleFonts.poppins(
                          fontSize: 18, fontWeight: FontWeight.w600)),
                  SizedBox(width: 140),
                  Text("Pincode",
                      style: GoogleFonts.poppins(
                          fontSize: 18, fontWeight: FontWeight.w600))
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                children: [
                  Text("Banglore",
                      style: GoogleFonts.poppins(
                          fontSize: 18, fontWeight: FontWeight.w400)),
                  SizedBox(width: 100),
                  Text("560061",
                      style: GoogleFonts.poppins(
                          fontSize: 18, fontWeight: FontWeight.w400))
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                children: [
                  Text("Payment ",
                      style: GoogleFonts.poppins(
                          fontSize: 18, fontWeight: FontWeight.w400)),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                children: [
                  Text("Online",
                      style: GoogleFonts.poppins(
                          fontSize: 18, fontWeight: FontWeight.w400)),
                  SizedBox(width: 250),
                  OutlinedButton(
                    style: OutlinedButton.styleFrom(
                        backgroundColor: Colors.green.withOpacity(0.2)),
                    onPressed: () {},
                    child: const Text(
                      "paid",
                      style: TextStyle(
                        color: Colors.green,
                      ),
                    ),
                  )
                ],
              ),
            ),
            const Divider(
              color: Colors.grey,
              thickness: 1,
              indent: 20,
              endIndent: 20,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 10, top: 10),
              child: Row(
                children: [
                  Text(" ADDITIONAL INFORMATION",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                          color: Colors.grey)),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 13, top: 10),
              child: Row(
                children: [
                  Text("State ",
                      style: GoogleFonts.poppins(
                          fontSize: 18, fontWeight: FontWeight.w400)),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 13,
              ),
              child: Row(
                children: [
                  Text("Karnataka",
                      style: GoogleFonts.poppins(
                          fontSize: 18, fontWeight: FontWeight.w400)),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 13, top: 10),
              child: Row(
                children: [
                  Text("Email",
                      style: GoogleFonts.poppins(
                          fontSize: 18, fontWeight: FontWeight.w600)),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 13,
              ),
              child: Row(
                children: [
                  Text("greeniceaqua@gmail.com",
                      style: GoogleFonts.poppins(
                          fontSize: 18, fontWeight: FontWeight.w400)),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                  width: size.width,
                  height: 40,
                  child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                          side: BorderSide(color: Colors.blue)),
                      onPressed: () {},
                      child: Text(
                        "Share receipt",
                        style: GoogleFonts.poppins(fontSize: 20),
                      ))),
            ),
          ],
        ),
      ),
    );
  }
}
