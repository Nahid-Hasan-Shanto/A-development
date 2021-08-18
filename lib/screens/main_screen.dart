import 'package:a_development/components/side_menu.dart';
import 'package:a_development/email/list_of_emails.dart';
import 'package:a_development/models/email.dart';
import 'package:flutter/material.dart';

import '../email/email_screen.dart';
import '../responsive.dart';

class MainScreen extends StatelessWidget {
  //get email => null;

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return Scaffold(
      body: Responsive(
        mobile: ListOfEmails(),
        tablet: Row(
          children: [
            Expanded(
              flex: 6,
              child: ListOfEmails(),
            ),
            Expanded(
              flex: 9,
              child: EmailScreen(email: emails[1]),
            ),
          ],
        ),
        desktop: Row(
          children: [
            Expanded(
              flex: _size.width > 1340 ? 2 : 4,
              child: SideMenu(),
            ),
            Expanded(
              flex: _size.width > 1340 ? 3 : 5,
              child: ListOfEmails(),
            ),
            Expanded(
              flex: _size.width > 1340 ? 8 : 10,
              child: EmailScreen(email: emails[1]),
            ),
          ],
        ),
      ),
    );
  }
}
