import 'package:contacts_app/helpers/contact_helper.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ContactHelper helper = ContactHelper();

  @override
  void initState() {
    super.initState();

    Contact c = Contact();
    c.name = "Lorena Vieira";
    c.email = "lori@gmail.com";
    c.phone = "312312312";
    c.image = "https://avatars.githubusercontent.com/u/36283335?v=4";

    helper.saveContact(c);

    helper.getAllContacts().then((list) => print(list));
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
