import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_noruzi/assets/colors.dart';
import 'package:login_noruzi/widgets/buttonwidget.dart';
import 'package:login_noruzi/widgets/textformwidget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(
        children: [
          Container(
            height: Get.height * .32,
            width: Get.width,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: blueColor,
                borderRadius:
                    const BorderRadius.vertical(bottom: Radius.circular(20))),
            child: Text("Logo",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: whiteColor)),
          ),
          SizedBox(
            height: Get.height * .2,
          ),
          Container(
              height: Get.height * .48,
              child: Form(
                  child: Padding(
                      padding: EdgeInsets.only(left: 15, right: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(
                              height: Get.height * .2,
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: const [
                                  TextFormWidget(
                                    prefixicon: Icons.mail,
                                    lableText: "email",
                                  ),
                                  TextFormWidget(
                                    suffixicon: Icons.visibility_off_rounded,
                                    prefixicon: Icons.lock,
                                    lableText: "password",
                                    obscureText: true,
                                  ),
                                ],
                              )),
                          Container(
                            margin: const EdgeInsets.only(top: 10),
                            height: Get.height * .05,
                            child: InkWell(
                                onTap: () {},
                                child: const Text("forget password?",
                                    style: TextStyle(fontSize: 16))),
                          ),
                          Container(
                              height: Get.height * .2,
                              margin: const EdgeInsets.only(bottom: 10),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  InkWell(
                                      onTap: () {},
                                      child: ButtonWidget(
                                        clickText: "Login",
                                        clickColor: true,
                                      )),
                                  InkWell(
                                      onTap: () {},
                                      child: ButtonWidget(
                                        clickText: "Sign Up",
                                        clickColor: false,
                                      ))
                                ],
                              ))
                        ],
                      ))))
        ],
      )),
    );
  }
}
