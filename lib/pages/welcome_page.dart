import 'package:credenager/pages/signup_page.dart';
import 'package:credenager/utils/CustomRoutes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // timeDilation = 20.0;

    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('images/bg.png'),
          fit: BoxFit.fill,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: ListView(
            shrinkWrap: true,
            padding: const EdgeInsets.all(15),
            children: [
              Hero(
                tag: "welcome_img",
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "images/welcome.png",
                      fit: BoxFit.fitWidth,
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    const DefaultTextStyle(
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff2C1542),
                      ),
                      child: Text("Credenager"),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const DefaultTextStyle(
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff432062),
                      ),
                      child: Text("Encrypted Credentials Manger"),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 45,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50.0),
                          ),
                        ),
                        backgroundColor: MaterialStateProperty.all<Color>(
                            const Color(0xff7D49AD))),
                    onPressed: () {},
                    child: const Padding(
                      padding: EdgeInsets.all(17),
                      child: Text(
                        "LOGIN",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                        ),
                      ),
                    )),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50.0),
                          ),
                        ),
                        backgroundColor: MaterialStateProperty.all<Color>(
                            const Color(0xffD4C2E4))),
                    onPressed: () {
                      Navigator.pushNamed(context, CustomRoute.signupPage);
                    },
                    child: const Padding(
                      padding: EdgeInsets.all(17),
                      child: Text(
                        "SIGNUP",
                        style: TextStyle(
                          color: Color(0xff432062),
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                        ),
                      ),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
