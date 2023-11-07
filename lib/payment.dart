import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Payment extends StatefulWidget {
  const Payment({super.key});

  @override
  State<Payment> createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Payments",
            style: GoogleFonts.poppins(fontSize: 25),
          ),
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.error_outline))
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(18),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.only(top: 10, left: 15, right: 15),
                  width: double.infinity,
                  height: size.height / 4,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                    boxShadow: const [
                      BoxShadow(
                          color: Colors.grey,
                          offset: Offset(0, 4),
                          blurRadius: 10),
                    ],
                  ),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Transaction Limit",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w500),
                        ),
                        const SizedBox(height: 10),
                        const Text(
                            "A free limit  up to which you will receive the online payments directly in your bank ."),
                        const SizedBox(height: 10),
                        const LinearProgressIndicator(
                          value: .5,
                          backgroundColor: Colors.grey,
                        ),
                        const SizedBox(height: 10),
                        const Text("36,668 left out of ₹50,000"),
                        const SizedBox(height: 10),
                        ElevatedButton(
                            onPressed: () {},
                            child: const Text("Increase limit"))
                      ]),
                ),
                const SizedBox(height: 25),
                InkWell(
                  onTap: () {},
                  child: Row(
                    children: [
                      Text("Default Method ",
                          style: GoogleFonts.poppins(
                              fontSize: 18, fontWeight: FontWeight.w400)),
                      Expanded(
                        child: Text("Online Payments > ",
                            textAlign: TextAlign.right,
                            style: GoogleFonts.poppins(
                                fontSize: 18, fontWeight: FontWeight.normal)),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 25),
                InkWell(
                  onTap: () {},
                  child: Row(
                    children: [
                      Text("Payment Profile",
                          style: GoogleFonts.poppins(
                              fontSize: 18, fontWeight: FontWeight.w400)),
                      Expanded(
                        child: Text("Bank Account > ",
                            textAlign: TextAlign.right,
                            style: GoogleFonts.poppins(
                                fontSize: 18, fontWeight: FontWeight.normal)),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 25),
                InkWell(
                  onTap: () {},
                  child: Row(
                    children: [
                      Text(
                        "Payment Overview",
                        style: GoogleFonts.poppins(
                            fontSize: 18, fontWeight: FontWeight.w700),
                      ),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              "Life Time  ",
                              style: GoogleFonts.poppins(
                                  fontSize: 18, fontWeight: FontWeight.normal),
                            ),
                            const Icon(
                              Icons.arrow_drop_down,
                              size: 18,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 15),
                Row(
                  children: [
                    Container(
                        padding: EdgeInsets.only(left: 15, top: 15),
                        width: size.width / 2 - 18 - 5,
                        height: size.height / 8,
                        decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(10)),
                        child: const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "AMOUNT ON HOLD ",
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 15,
                                  color: Colors.white),
                            ),
                            Text(
                              "₹0",
                              style: TextStyle(
                                fontSize: 25,
                                color: Colors.white,
                              ),
                            )
                          ],
                        )),
                    const SizedBox(width: 10),
                    Container(
                      padding: EdgeInsets.only(left: 15, top: 15),
                      width: size.width / 2 - 18 - 5,
                      height: size.height / 8,
                      decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(10)),
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "AMOUNT RECIVED ",
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 15,
                                color: Colors.white),
                          ),
                          Text(
                            "₹13,332",
                            style: TextStyle(
                              fontSize: 25,
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 15),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Transcation",
                    style: GoogleFonts.poppins(
                      fontSize: 20,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Container(
                    child: Row(children: [
                      ChoiceChip(
                        label: Text("On hold"),
                        selected: false,
                        backgroundColor: Colors.grey.shade300,
                        selectedColor: Colors.blueAccent,
                        onSelected: (value) {
                          setState(() {});
                        },
                      ),
                      SizedBox(width: 40),
                      ChoiceChip(
                        label: const Text(
                          "Payout(15)",
                        ),
                        selected: true,
                        backgroundColor: Colors.grey.shade300,
                        selectedColor: Colors.blueAccent,
                        labelStyle: TextStyle(color: Colors.white),
                        onSelected: (value) {},
                      ),
                      SizedBox(width: 40),
                      ChoiceChip(
                        label: Text("Refund"),
                        selected: false,
                        backgroundColor: Colors.grey.shade300,
                        selectedColor: Colors.blueAccent,
                        onSelected: (value) {},
                      )
                    ]),
                  ),
                ),
                containers(
                  size: size,
                  underrupees: "₹799 deposited to 58860200000138",
                  order: "Order #1688068",
                  month: "Jan 12, 02:06 AM ",
                  pics: "assets/images/w6.2.jpeg",
                  money: '₹799',
                ),
                const SizedBox(height: 10),
                containers(
                    size: size,
                    underrupees: "₹397.4 deposited to 58860200000138",
                    order: "Order #2457741",
                    month: "Feb 15, 01:06 PM ",
                    pics: "assets/images/w6.1.jpeg",
                    money: '₹397.4'),
                const SizedBox(height: 10),
                containers(
                    size: size,
                    underrupees: "₹686.42 deposited to 58860200000138",
                    order: "Order #5369633",
                    month: "Mar 09, 09:36 PM ",
                    pics: "assets/images/w6.2.jpeg",
                    money: '₹397.4'),
                const SizedBox(height: 10),
                containers(
                    size: size,
                    underrupees: "₹788.5 deposited to 58860200000138",
                    order: "Order #7370568",
                    month: "Apl 11, 11:06 AM ",
                    pics: "assets/images/w6.1.jpeg",
                    money: '₹397.4'),
                const SizedBox(height: 10),
                containers(
                    size: size,
                    underrupees: "₹678.45 deposited to 58860200000138",
                    order: "Order #5768058",
                    month: "May 05, 12:05 PM ",
                    pics: "assets/images/w6.2.jpeg",
                    money: '₹397.4'),
                const SizedBox(height: 10),
                containers(
                    size: size,
                    underrupees: "₹453.7 deposited to 58860200000138",
                    order: "Order #3688068",
                    month: "Jul 12, 09:06 AM ",
                    pics: "assets/images/w6.1.jpeg",
                    money: '₹397.4'),
                const SizedBox(height: 10),
                containers(
                    size: size,
                    underrupees: "₹564.9 deposited to 58860200000138",
                    order: "Order #26880000",
                    month: "Jul 12, 02:06 PM ",
                    pics: "assets/images/w6.2.jpeg",
                    money: '₹397.4'),
                const SizedBox(height: 10),
                containers(
                    size: size,
                    underrupees: "₹567 deposited to 58860200000138",
                    order: "Order #16880453",
                    month: "Dec 29, 08:59 AM ",
                    pics: "assets/images/w6.1.jpeg",
                    money: '₹397.4'),
                const SizedBox(height: 10),
                containers(
                    size: size,
                    underrupees: "₹945.4 deposited to 58860200000138",
                    order: "Order #7688045",
                    month: "Nov 23, 08:06 AM ",
                    pics: "assets/images/w6.2.jpeg",
                    money: '₹397.4'),
                const SizedBox(height: 10),
                containers(
                    size: size,
                    underrupees: "₹863 deposited to 58860200000138",
                    order: "Order #5688056",
                    month: "Jul 18, 02:06 PM ",
                    pics: "assets/images/w6.1.jpeg",
                    money: '₹397.4'),
                const SizedBox(height: 10),
                containers(
                    size: size,
                    underrupees: "₹453.4 deposited to 58860200000138",
                    order: "Order #8688056",
                    month: "Aug 19, 12:06 AM ",
                    pics: "assets/images/w6.2.jpeg",
                    money: '₹397.4'),
                const SizedBox(height: 10),
                containers(
                    size: size,
                    underrupees: "₹456 deposited to 58860200000138",
                    order: "Order #5688868",
                    month: "Sep 16, 06:06 PM ",
                    pics: "assets/images/w6.1.jpeg",
                    money: '₹397.4'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class containers extends StatelessWidget {
  const containers({
    super.key,
    required this.size,
    required this.underrupees,
    required this.order,
    required this.month,
    required this.pics,
    required this.money,
  });

  final Size size;
  final String underrupees;
  final String order;
  final String month;
  final String pics;
  final String money;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(9),
      width: size.width,
      height: 105,
      color: Colors.white10,
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      pics,
                      width: 76,
                    ),
                  ),
                  SizedBox(width: 5),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment
                          .start, // Adjust the alignment as needed
                      children: [
                        Text(
                          order,
                          style: const TextStyle(
                              fontSize: 19, fontWeight: FontWeight.w600),
                        ),
                        Text(
                          month,
                          style: const TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w300),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment
                        .start, // Adjust the alignment as needed
                    children: [
                      Text(
                        money,
                        // textDirection: TextDirection.rtl,
                        style: const TextStyle(
                            fontSize: 19, fontWeight: FontWeight.w600),
                      ),
                      const Text(
                        'Successful',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w300),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 5),
              Text(underrupees),
            ],
          ),
        ],
      ),
    );
  }
}
