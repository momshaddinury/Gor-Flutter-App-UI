import 'package:flutter/material.dart';

class PrimaryTextWidget extends StatelessWidget {
  const PrimaryTextWidget({
    Key key,
    this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
          color: Colors.black, fontSize: 33, fontWeight: FontWeight.bold),
    );
  }
}

class DateCard extends StatelessWidget {
  const DateCard({
    Key key,
    this.date,
    this.color,
    this.dateColor,
  }) : super(key: key);
  final String date;
  final Color color;
  final Color dateColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20.0),
      child: Container(
        height: 45,
        width: 55,
        color: color,
        child: Center(
            child: Text(
          date,
          style: TextStyle(
            fontSize: 20,
            color: dateColor,
          ),
        )),
      ),
    );
  }
}

class ScheduleCard extends StatelessWidget {
  const ScheduleCard(
      {Key key,
      this.time,
      this.duration,
      this.name,
      this.assetName,
      this.color,
      this.durationColor,
      this.nameColor})
      : super(key: key);

  final String time;
  final String duration;
  final String name;
  final String assetName;
  final Color color;
  final Color durationColor;
  final Color nameColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            height: 100,
            width: 60,
            child: Text(
              time,
              style: TextStyle(
                fontSize: 20,
                color: Colors.black54,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          SizedBox(
            height: 28,
            width: 24,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(right: 29.0),
              child: Container(
                height: 100,
                color: color,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(width: 36),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          duration,
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: durationColor),
                        ),
                        SizedBox(height: 10),
                        Text(
                          name,
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: nameColor),
                        )
                      ],
                    ),
                    Spacer(),
                    Container(
                      height: 70,
                      width: 70,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                          image: DecorationImage(
                              fit: BoxFit.fill,
                              image: NetworkImage(assetName))),
                    ),
                    SizedBox(width: 21),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
