import 'package:flutter/material.dart';
import 'package:servdesk/domain/portals/portal.dart';

import 'package:servdesk/presentation/config/options.dart';
import 'package:servdesk/presentation/constant.dart';
import 'package:servdesk/share/logger/logger_utils.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // var  portalApis  = PORTALSAPIS();
    // _getdata();

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Stack(
            children: [
              Container(
                padding: EdgeInsets.only(left: 20),
                height: MediaQuery.of(context).size.height,
                width: double.infinity,
                child: ListView.builder(
                    itemCount: schoolLists.length,
                    itemBuilder: (BuildContext context, int index) {
                      return buildList(context, index);
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// void _getdata() async {
//   response = await dio.get("/ticket/modules?page=1&limit=1&search_value=");
//   Logger.write("response.data:$response.data.toString()");
//   print(response.data.toString());
// }

Widget buildList(BuildContext context, int index) {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(25),
      color: Theme.of(context).textTheme.bodyText1!.color!.withOpacity(0.0),
      // border: 1,
      border: Border.all(
        color: Theme.of(context).textTheme.bodyText1!.color!.withOpacity(0.2),
        width: 1,
      ),
    ),
    width: double.infinity,
    height: 110,
    margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          width: 50,
          height: 50,
          margin: EdgeInsets.only(right: 15),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            // border: Border.all(width: 3, color: kSecondaryColor),
            border: Border.all(
              width: 3,
              color:
                  Theme.of(context).textTheme.subtitle1!.color!.withOpacity(0.0),
            ),
            image: DecorationImage(
                image: new ExactAssetImage(
                    'assets/icons/' + schoolLists[index]['icon']),

                // image: NetworkImage(schoolLists[index]['logoText']),
                fit: BoxFit.fill),
          ),
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                schoolLists[index]['name'],
                style: TextStyle(
                    color: Theme.of(context)
                        .textTheme
                        .bodyText1!
                        .color!
                        .withOpacity(0.8),
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
              SizedBox(
                height: 6,
              ),
              Row(
                children: <Widget>[
                  Icon(
                    Icons.location_on,
                    color: kSecondaryColor,
                    size: 20,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(schoolLists[index]['location'],
                      style: TextStyle(
                          color: kSecondaryColor,
                          fontSize: 13,
                          letterSpacing: .3)),
                ],
              ),
              SizedBox(
                height: 6,
              ),
              Row(
                children: <Widget>[
                  Icon(
                    Icons.school,
                    color: kSecondaryColor,
                    size: 20,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(schoolLists[index]['type'],
                      style: TextStyle(
                          color: kSecondaryColor,
                          fontSize: 13,
                          letterSpacing: .3)),
                  // fontSize: 13,
                  // letterSpacing: .3)),
                ],
              ),
            ],
          ),
        )
      ],
    ),
  );
}
