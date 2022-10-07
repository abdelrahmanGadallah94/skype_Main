import 'package:flutter/material.dart';

import '../../custom/image links.dart';
import '../components/custom button.dart';

class Skype extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xff3fa6eb),
      body: SafeArea(
          child: Container(
            height: size.height,
            width: size.width,
            child: Column(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      SizedBox(
                        height: size.height * .05,
                      ),
                      Image.asset(
                        Links.skypeLogo,
                        height: size.height * .15,
                        width: size.width * .5,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Sign in",
                        style: TextStyle(
                            color: Colors.white.withOpacity(.7), fontSize: 20),
                      ),
                      SizedBox(height: 20),
                      CustomButton(text: "Skype name"),
                      SizedBox(height: 20),
                      CustomButton(text: "Microsoft account"),
                      SizedBox(height: 20),
                      Opacity(
                        opacity: .7,
                        child: Container(
                          width: size.width * .7,
                          height: 100,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                              itemCount: Links.logos.length,
                              itemBuilder: (context, index) {
                                return Center(
                                  child: Container(
                                      height: 50,
                                      margin: EdgeInsets.symmetric(horizontal: 5),
                                      child: Image.asset(
                                        Links.logos[index]["logo"],
                                        height: 50,
                                        width: size.width * .12,
                                      )),
                                );
                              }),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  height: size.height * .08,
                  width: size.width,
                  color: Color(0xff368dca),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            "Create an account",
                            style: TextStyle(
                                color: Colors.white.withOpacity(.7), fontSize: 20),
                          )),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.arrow_forward_ios_outlined,
                            size: 20,
                          ),
                          color: Colors.white.withOpacity(.7))
                    ],
                  ),
                )
              ],
            ),
          ),
        ),

    );
  }
}
