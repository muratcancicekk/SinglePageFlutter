import 'package:basisinglepage/size_config.dart';
import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  Body({Key key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: SizeConfig.blockSizeHorizontal * 4,
            vertical: SizeConfig.blockSizeVertical * 6),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(
              Icons.arrow_back,
              color: Colors.black,
              size: SizeConfig.screenHeight * 0.04,
            ),
            SizedBox(
              height: SizeConfig.screenHeight * 0.02,
            ),
            buildContext(),
            SizedBox(
              height: SizeConfig.screenHeight * 0.02,
            ),
            Text(
              "About",
              style: Theme.of(context).textTheme.headline5,
            ),
            SizedBox(
              height: SizeConfig.screenHeight * 0.02,
            ),
            Text(
              "Lorem Ipsum is survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
              style: TextStyle(color: Colors.grey),
            ),
            SizedBox(
              height: SizeConfig.screenHeight * 0.04,
            ),
            buildSecondContext(),
            Text(
              "Activity",
              style: Theme.of(context).textTheme.headline5,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  vertical: SizeConfig.safeBlockVertical * 2),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: SizeConfig.screenWidth * 0.42,
                    height: SizeConfig.screenHeight * 0.15,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.grey),
                  ),
                  Container(
                    width: SizeConfig.screenWidth * 0.42,
                    height: SizeConfig.screenHeight * 0.15,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.grey),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container buildSecondContext() {
    return Container(
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          buildAddress(),
          Container(
            width: SizeConfig.screenWidth * 0.3,
            height: SizeConfig.screenHeight * 0.25,
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(25),
            ),
          ),
        ],
      ),
    );
  }

  Column buildAddress() {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(Icons.gps_fixed),
            SizedBox(
              width: SizeConfig.screenHeight * 0.02,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Address"),
                SizedBox(
                  height: SizeConfig.screenWidth * 0.01,
                ),
                Text("kötekli mahallesi")
              ],
            ),
          ],
        ),
        SizedBox(
          height: SizeConfig.screenHeight * 0.02,
        ),
        Row(
          children: [
            Icon(Icons.lock_clock),
            SizedBox(
              width: SizeConfig.screenHeight * 0.02,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Daily Practice"),
                SizedBox(
                  height: SizeConfig.screenHeight * 0.01,
                ),
                Text("kötekli mahallesi")
              ],
            ),
          ],
        ),
      ],
    );
  }

  Row buildContext() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          width: SizeConfig.screenWidth * 0.35,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(
              "assets/image1.jpg",
              height: SizeConfig.screenHeight * 0.30,
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(
          width: SizeConfig.screenWidth * 0.05,
        ),
        Container(
          width: SizeConfig.screenWidth * 0.42,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Dr. Stefeni",
                style: Theme.of(context).textTheme.headline5,
              ),
              Text(
                "Albert",
                style: Theme.of(context).textTheme.headline5,
              ),
              SizedBox(
                height: SizeConfig.screenHeight * 0.01,
              ),
              Text("Heart Speailist"),
              SizedBox(
                height: SizeConfig.screenHeight * 0.02,
              ),
              buildIcon(),
            ],
          ),
        )
      ],
    );
  }

  Container buildIcon() {
    return Container(
      width: SizeConfig.screenWidth * 0.60,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          IconBuild(
            icon: Icon(Icons.mail),
            color: Colors.orange[200],
            iconColor: Colors.orange[50],
          ),
          IconBuild(
            icon: Icon(Icons.phone),
            color: Colors.red[200],
            iconColor: Colors.red[50],
          ),
          IconBuild(
            icon: Icon(Icons.video_call),
            color: Colors.grey,
            iconColor: Colors.grey[200],
          ),
        ],
      ),
    );
  }
}

class IconBuild extends StatelessWidget {
  const IconBuild({
    Key key,
    @required this.icon,
    @required this.color,
    @required this.iconColor,
  }) : super(key: key);
  final Icon icon;
  final Color color;
  final Color iconColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: SizeConfig.screenWidth * 0.12,
      height: SizeConfig.screenHeight * 0.06,
      decoration: BoxDecoration(
        color: iconColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Icon(
        icon.icon,
        color: color,
      ),
    );
  }
}
