import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  static const String id = "home_screen";
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      extendBodyBehindAppBar: true,
      body: SafeArea(
        top: false,
        child: SingleChildScrollView(
          child: Column(
            children: [
              AspectRatio(
                aspectRatio: 1,
                child: Image.asset(
                  "assets/images/4.png",
                ),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(
                  20.0,
                  20.0,
                  20.0,
                  10.0,
                ),
                child: CategotyButton(
                  assetSrc: "assets/images/1.png",
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 10.0,
                  horizontal: 20.0,
                ),
                child: CategotyButton(assetSrc: "assets/images/2.png"),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 10.0,
                  horizontal: 20.0,
                ),
                child: CategotyButton(assetSrc: "assets/images/3.png"),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 10.0,
                  horizontal: 20.0,
                ),
                child: CategotyButton(assetSrc: "assets/images/5.png"),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 10.0,
                  horizontal: 20.0,
                ),
                child: CategotyButton(assetSrc: "assets/images/6.png"),
              ),
              const SizedBox(
                height: 20.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CategotyButton extends StatelessWidget {
  final String assetSrc;
  const CategotyButton({
    Key? key,
    required this.assetSrc,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 16 / 7,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(5.0),
        child: Image.asset(
          assetSrc,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
