import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class Dukaan_page extends StatefulWidget {
  const Dukaan_page({super.key});

  @override
  State<Dukaan_page> createState() => _Dukaan_pageState();
}

bool firstBool = false;
bool secondBool = false;
bool thirdBool = false;
bool fourthBool = false;
bool fifthBool = false;
bool sixthBool = false;

// ignore: camel_case_types
class _Dukaan_pageState extends State<Dukaan_page> {
  @override
  Widget build(BuildContext context) {
    final videourl = "https://youtu.be/u1r8tni9vNY?si=rl0lzaBxLPOjF9ZC";
    final videoid =
        YoutubePlayer.convertUrlToId(videourl) ?? "DEFAULT_VIDEO_ID";
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: Text("Dukaan Premium"),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Stack(
            children: [
              Container(
                color: Colors.blue,
                width: size.width,
                height: 100,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 15,
                  right: 15,
                ),
                child: Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    height: 240,
                    width: size.width,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Column(
                        children: [
                          Image.asset(
                            "assets/images/dukaan.png",
                            width: 190,
                          ),
                          SizedBox(height: 10),
                          Text(
                            "Get Duckaan Premium for just ₹4,999/year ",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.poppins(
                                fontSize: 20, fontWeight: FontWeight.w500),
                          ),
                          Text(
                            "All the advanced features for scaling yours \n                                 business",
                            style: GoogleFonts.poppins(
                                fontSize: 15, fontWeight: FontWeight.w300),
                          )
                        ],
                      ),
                    )),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Column(
                children: [
                  Text(
                    "Features",
                    style: GoogleFonts.poppins(
                        fontSize: 20, fontWeight: FontWeight.w500),
                  )
                ],
              ),
            ),
          ),
          Customs(
              size: size,
              icons: Icons.language_outlined,
              text_1: "Custom domain name",
              text_2:
                  "Get your own custom domain and build your brand on the internet"),
          const SizedBox(height: 10),
          Customs(
              size: size,
              icons: Icons.verified_outlined,
              text_1: "Verified seller badge",
              text_2:
                  "get green verified badge under your store name and build trust."),
          const SizedBox(height: 10),
          Customs(
              size: size,
              icons: Icons.laptop,
              text_1: "Dukaan for PC",
              text_2:
                  "Access all the exclusive premium feature on dukaan for PC"),
          const SizedBox(height: 10),
          Customs(
              size: size,
              icons: Icons.headset_mic_outlined,
              text_1: "Priority support ",
              text_2:
                  "Get your question s resolved with our priority customer support."),
          SizedBox(height: 10),
          const Divider(
            color: Colors.grey,
            thickness: 1,
            indent: 20,
            endIndent: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Align(
              alignment: Alignment.topLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 15,
                    ),
                    child: Text(
                      "What is Dukaan premium",
                      style: GoogleFonts.poppins(
                          fontSize: 20, fontWeight: FontWeight.w400),
                    ),
                  ),
                  const SizedBox(height: 10),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: YoutubePlayer(
                        controller: YoutubePlayerController(
                            initialVideoId: videoid,
                            flags: YoutubePlayerFlags(
                                autoPlay: false, mute: true, isLive: false))),
                  ),
                  const SizedBox(height: 15),
                  const Divider(
                    color: Colors.grey,
                    thickness: 1,
                    indent: 20,
                    endIndent: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Frequently asked questions",
                        style: GoogleFonts.poppins(
                            fontSize: 20, fontWeight: FontWeight.w500),
                      ),
                      SizedBox(height: 10),
                      InkWell(
                        onTap: () {
                          if (firstBool) {
                            setState(() {
                              firstBool = false;
                            });
                          } else {
                            setState(() {
                              firstBool = true;
                            });
                          }
                        },
                        child: Row(
                          children: [
                            SizedBox(
                              width: 320,
                              child: Text(
                                "What types of business can use Dukaan Premium",
                                style: GoogleFonts.poppins(
                                    fontSize: 15, fontWeight: FontWeight.w400),
                              ),
                            ),
                            Spacer(),
                            firstBool ? Icon(Icons.minimize) : Icon(Icons.add),
                          ],
                        ),
                      ),
                      Visibility(
                          visible: firstBool,
                          child: const Row(
                            children: [
                              SizedBox(
                                  width: 320,
                                  child: Text(
                                      "Dukaan caters to a wide variety of sellers . Be it a small grocery store or a big legancy brand - anyone who wants to sell their products /services online -Dukaan is the perfect platform for you."))
                            ],
                          )),
                      const SizedBox(height: 10),
                      InkWell(
                        onTap: () {
                          if (secondBool) {
                            setState(() {
                              secondBool = false;
                            });
                          } else {
                            setState(() {
                              secondBool = true;
                            });
                          }
                        },
                        child: Row(
                          children: [
                            SizedBox(
                              width: 320,
                              child: Text(
                                "what is your refund policy",
                                style: GoogleFonts.poppins(
                                    fontSize: 15, fontWeight: FontWeight.w400),
                              ),
                            ),
                            const Spacer(),
                            secondBool ? Icon(Icons.minimize) : Icon(Icons.add),
                          ],
                        ),
                      ),
                      Visibility(
                          visible: secondBool,
                          child: const Row(
                            children: [
                              SizedBox(
                                  width: 320,
                                  child: Text(
                                      "Dukaan caters to a wide variety of sellers . Be it a small grocery store or a big legancy brand - anyone who wants to sell their products /services online -Dukaan is the perfect platform for you."))
                            ],
                          )),
                      const SizedBox(height: 10),
                      InkWell(
                        onTap: () {
                          if (thirdBool) {
                            setState(() {
                              thirdBool = false;
                            });
                          } else {
                            setState(() {
                              thirdBool = true;
                            });
                          }
                        },
                        child: Row(
                          children: [
                            SizedBox(
                              width: 320,
                              child: Text(
                                "Will there be an automatic charge after the paid traial?",
                                style: GoogleFonts.poppins(
                                    fontSize: 15, fontWeight: FontWeight.w400),
                              ),
                            ),
                            Spacer(),
                            thirdBool ? Icon(Icons.minimize) : Icon(Icons.add),
                          ],
                        ),
                      ),
                      Visibility(
                          visible: thirdBool,
                          child: const Row(
                            children: [
                              SizedBox(
                                  width: 320,
                                  child: Text(
                                      "If you don't cancel on time, you'll be charged. Usually, you have to give your credit card number for a “free trial.” That way, the company can charge you if you don't cancel before the trial period ends."))
                            ],
                          )),
                      const SizedBox(height: 10),
                      InkWell(
                        onTap: () {
                          if (fourthBool) {
                            setState(() {
                              fourthBool = false;
                            });
                          } else {
                            setState(() {
                              fourthBool = true;
                            });
                          }
                        },
                        child: Row(
                          children: [
                            SizedBox(
                              width: 320,
                              child: Text(
                                "What payment methods  do you offer?",
                                style: GoogleFonts.poppins(
                                    fontSize: 15, fontWeight: FontWeight.w400),
                              ),
                            ),
                            const Spacer(),
                            fourthBool ? Icon(Icons.minimize) : Icon(Icons.add),
                          ],
                        ),
                      ),
                      Visibility(
                          visible: fourthBool,
                          child: const Row(
                            children: [
                              SizedBox(
                                  width: 320,
                                  child: Text(
                                      "Commonly accepted payment methods include cash, credit cards, debit cards, gift cards, and mobile payments."))
                            ],
                          )),
                      const SizedBox(height: 10),
                      InkWell(
                        onTap: () {
                          if (fifthBool) {
                            setState(() {
                              fifthBool = false;
                            });
                          } else {
                            setState(() {
                              fifthBool = true;
                            });
                          }
                        },
                        child: Row(
                          children: [
                            SizedBox(
                              width: 320,
                              child: Text(
                                "What happens When my free traial ends?",
                                style: GoogleFonts.poppins(
                                    fontSize: 15, fontWeight: FontWeight.w400),
                              ),
                            ),
                            Spacer(),
                            fifthBool ? Icon(Icons.minimize) : Icon(Icons.add),
                          ],
                        ),
                      ),
                      Visibility(
                          visible: fifthBool,
                          child: const Row(
                            children: [
                              SizedBox(
                                  width: 320,
                                  child: Text(
                                      "If you don't cancel on time, you'll be charged. Usually, you have to give your credit card number for a “free trial.” That way, the company can charge you if you don't cancel before the trial period ends."))
                            ],
                          )),
                      const SizedBox(height: 10),
                      InkWell(
                        onTap: () {
                          if (sixthBool) {
                            setState(() {
                              sixthBool = false;
                            });
                          } else {
                            setState(() {
                              sixthBool = true;
                            });
                          }
                        },
                        child: Row(
                          children: [
                            SizedBox(
                              width: 320,
                              child: Text(
                                "What are the terms for the custom domain?",
                                style: GoogleFonts.poppins(
                                    fontSize: 15, fontWeight: FontWeight.w400),
                              ),
                            ),
                            Spacer(),
                            fifthBool ? Icon(Icons.minimize) : Icon(Icons.add),
                          ],
                        ),
                      ),
                      Visibility(
                          visible: sixthBool,
                          child: const Row(
                            children: [
                              SizedBox(
                                  width: 320,
                                  child: Text(
                                      "A custom domain is a unique branded name that identifies a website. For example, NationBuilder's custom domain is nationbuilder.com. Custom domains, also known as vanity URLs, appear in the address bar at the top of every browser."))
                            ],
                          )),
                      const Divider(
                        color: Colors.grey,
                        thickness: 1,
                        indent: 20,
                        endIndent: 20,
                      ),
                      SizedBox(width: 10),
                      Text(
                        "Need help? Get in touch",
                        style: GoogleFonts.poppins(
                            fontSize: 20, fontWeight: FontWeight.w400),
                      ),
                      Row(
                        children: [
                          Container(
                            height: 100,
                            width: 190,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                  color:
                                      const Color.fromARGB(255, 175, 172, 172),
                                )),
                            child: Column(children: [
                              SizedBox(height: 15),
                              const Icon(
                                Icons.chat_bubble_outline,
                                size: 45,
                              ),
                              Text(
                                "Live Chat",
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w400),
                              )
                            ]),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Container(
                            height: 100,
                            width: 190,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                  color:
                                      const Color.fromARGB(255, 175, 172, 172),
                                )),
                            child: Column(children: [
                              SizedBox(height: 15),
                              const Icon(
                                Icons.call,
                                size: 45,
                              ),
                              Text(
                                "Phone Call",
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w400),
                              ),
                            ]),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 190,
                            child: OutlinedButton(
                                onPressed: () {},
                                child: Text(
                                  "Select Domain",
                                  style: GoogleFonts.poppins(fontSize: 18),
                                )),
                          ),
                          const SizedBox(width: 14),
                          SizedBox(
                            width: 190,
                            child: ElevatedButton(
                                onPressed: () {},
                                child: Text(
                                  "Select Domain",
                                  style: GoogleFonts.poppins(fontSize: 18),
                                )),
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}

class Customs extends StatelessWidget {
  const Customs({
    super.key,
    required this.size,
    required this.icons,
    required this.text_1,
    required this.text_2,
  });

  final Size size;
  final IconData icons;
  final String text_1;
  final String text_2;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(children: [
        Padding(
          padding: const EdgeInsets.only(left: 15),
          child: Container(
            height: 70,
            width: 70,
            decoration: const BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(color: Color(0xff176dab), spreadRadius: 2)
                ]),
            child: Icon(
              icons,
              size: 50,
              color: Color(0xff176dab),
            ),
          ),
        ),
        SizedBox(width: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              text_1,
              style: GoogleFonts.poppins(
                  fontSize: 19, fontWeight: FontWeight.w500),
            ),
            Container(
              height: 70,
              width: size.width - 95,
              child: Text(
                text_2,
                style: GoogleFonts.poppins(
                  fontSize: 17,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),
          ],
        )
      ]),
    );
  }
}
