import 'package:flutter/material.dart';
import 'package:uidesign/additional.dart';
import 'package:uidesign/catalogue.dart';
import 'package:uidesign/dukaan.dart';
import 'package:uidesign/order.dart';
import 'package:uidesign/payment.dart';

class BottomNavigatorBar extends StatefulWidget {
  const BottomNavigatorBar({super.key});

  @override
  State<BottomNavigatorBar> createState() => _BottomNavigatorBarState();
}

final List<Widget> page = [
  const HomePage(),
  const Order(),
  const catalogue(),
  const Managestr(),
  const AdditionalScrn()
];
int currentIndex = 3;

class _BottomNavigatorBarState extends State<BottomNavigatorBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: page[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        fixedColor: const Color(0xff176dab),
        unselectedItemColor: Colors.grey,
        currentIndex: currentIndex,
        showUnselectedLabels: true,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.list), label: "Orders"),
          BottomNavigationBarItem(
              icon: Icon(Icons.widgets_outlined), label: "Products"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.layers,
              ),
              label: "Manage"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Account"),
        ],
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Home Page'),
    );
  }
}

class Managestr extends StatelessWidget {
  const Managestr({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("Manage Store"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(13),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(children: [
                  const rowss(
                    textt: "Markenting\nDesigns",
                    bgicons: Color.fromARGB(255, 226, 157, 53),
                    icon: Icons.volume_down,
                  ),
                  const SizedBox(width: 14),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const Payment(),
                      ));
                    },
                    child: const rowss(
                      textt: "Online\nPayment",
                      bgicons: Colors.green,
                      icon: Icons.currency_rupee,
                    ),
                  ),
                ]),
                const SizedBox(height: 14),
                const Row(children: [
                  rowss(
                      textt: "Discount\nCoupons",
                      bgicons: Colors.yellow,
                      icon: Icons.brightness_6),
                  SizedBox(width: 14),
                  rowss(
                      textt: "My \nCustomers",
                      bgicons: Color.fromARGB(255, 107, 181, 241),
                      icon: Icons.group_add),
                ]),
                const SizedBox(height: 14),
                Row(children: [
                  const rowss(
                      textt: "Store QR \nCode",
                      bgicons: Colors.grey,
                      icon: Icons.qr_code_scanner),
                  const SizedBox(width: 14),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const Dukaan_page(),
                      ));
                    },
                    child: const rowss(
                        textt: "Extra \nCharges",
                        bgicons: Colors.deepPurple,
                        icon: Icons.gavel),
                  ),
                ]),
                const SizedBox(height: 14),
                const Row(children: [
                  rowss(
                    textt: "Order \nForms",
                    bgicons: Color.fromARGB(255, 141, 37, 72),
                    icon: Icons.description,
                    newbool: true,
                  ),
                  SizedBox(width: 14),
                ]),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class rowss extends StatelessWidget {
  const rowss({
    super.key,
    required this.textt,
    required this.bgicons,
    required this.icon,
    this.newbool = false,
  });
  final String textt;
  final Color bgicons;
  final IconData icon;
  final bool newbool;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      height: 180,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                spreadRadius: 0,
                blurRadius: 1,
                color: Colors.black.withOpacity(0.5),
                offset: Offset(0, .1)),
          ]),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            children: [
              Container(
                child: Icon(
                  icon,
                  color: const Color.fromARGB(255, 255, 255, 255),
                  size: 35,
                ),
                width: 70,
                height: 70,
                decoration: BoxDecoration(
                  color: bgicons,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              SizedBox(width: 29),
              newbool
                  ? Container(
                      child: const Text(
                        " New ",
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                      decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(10)),
                    )
                  : Container()
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.all(10),
          child: Text(
            textt,
            style: TextStyle(fontWeight: FontWeight.w700, fontSize: 25),
          ),
        )
      ]),
    );
  }
}
