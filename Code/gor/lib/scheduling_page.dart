import 'package:flutter/material.dart';
import 'package:gor/constants.dart';
import 'package:gor/widgets.dart';

class SchedulingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: Padding(
        padding: const EdgeInsets.only(left: 32.0),
        child: Container(
          height: double.maxFinite,
          width: double.maxFinite,
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              PrimaryTextWidget(title: "Choose Date"),
              SizedBox(height: 45),
              Text(
                "April",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Container(
                height: 60,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: date.length,
                  itemBuilder: (context, index) {
                    return DateCard(
                      date: date[index],
                      color: index == 1 ? kDateBoxActiveColor : kDateBoxColor,
                      dateColor: index == 1 ? Colors.white : Colors.black,
                    );
                  },
                ),
              ),
              SizedBox(height: 45),
              PrimaryTextWidget(title: "Choose masters"),
              SizedBox(height: 25),
              Expanded(
                child: Container(
                  child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: time.length,
                    itemBuilder: (context, i) {
                      return ScheduleCard(
                        time: time[i],
                        color: boxBgColor[i],
                        duration: duration[i],
                        name: customerName[i],
                        assetName: avatarUrl[i],
                        durationColor: durationColor[i],
                        nameColor: nameColor[i],
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      elevation: 0.0,
      backgroundColor: Colors.white,
      leading: IconButton(
        padding: const EdgeInsets.only(left: 26.0),
        icon: Icon(
          Icons.arrow_back_ios,
          color: Colors.black,
        ),
        onPressed: () {
          Navigator.of(context).pushNamed('/WelcomeScreen');
        },
      ),
      actions: <Widget>[
        IconButton(
          icon: Icon(
            Icons.more_vert,
            color: Colors.black,
          ),
          onPressed: () {},
        )
      ],
    );
  }
}
