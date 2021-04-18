import 'package:flutter/material.dart';
import 'package:servdesk/domain/portals/portal.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
            itemCount: chatsData.length,
            itemBuilder: (context, index) {
              return portalData(chatsData[index]);
            },
          ),
        ),
      ],
    );
  }
}
