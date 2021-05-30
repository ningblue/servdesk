import 'package:flutter/material.dart';
import 'package:servdesk/domain/portals/portal.dart';
import 'package:servdesk/infrastructure/portals/portal.dart';

class PortalBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: Center(
      //   child: ElevatedButton(
      //     child: Text('Open route'),
      //     onPressed: () {
      //       Navigator.push(
      //         context,
      //         MaterialPageRoute(builder: (context) => SecondRoute()),
      //       );
      //     },
      //   ),
      // ),
      body: Body(),
    );
  }
}

Widget getFormPage(BuildContext context, int index )  {

  return Scaffold(
      appBar: AppBar(
        title: Text(schoolLists[index]["name"]),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Go back!'),
        ),
      ),
    );


}
// class SecondRoute extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Second Route"),
//       ),
//       body: Center(
//         child: ElevatedButton(
//           onPressed: () {
//             Navigator.pop(context);
//           },
//           child: Text('Go back!'),
//         ),
//       ),
//     );
//   }
// }
