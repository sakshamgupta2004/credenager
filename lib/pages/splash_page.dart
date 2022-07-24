import 'package:credenager/utils/CustomRoutes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushNamed(context, CustomRoute.welcomePage);
    });
  }

  @override
  Widget build(BuildContext context) {
    // timeDilation = 20.0;

    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("images/bg.png"),
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
                height: 50,
              ),
              const DefaultTextStyle(
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  color: Color(0xff592A83),
                ),
                child: Text("Status..."),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
