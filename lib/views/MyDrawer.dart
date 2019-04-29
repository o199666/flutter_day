import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Drawer(
        child: MediaQuery.removePadding(
      context: context,
      removeTop: true,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 38),
            child: Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: ClipOval(
                      child: Image.network(
                    'https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=4214474476,1941437198&fm=27&gp=0.jpg',
                    width: 80,
                  )),
                ),
                Text(
                  'ASD',
                  style: TextStyle(fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          Expanded(
            child: ListView(
              children: <Widget>[
                ListTile(
                  leading: const Icon(Icons.add),
                  title: const Text('Add account'),
                ),
                ListTile(
                  leading: const Icon(Icons.settings),
                  title: const Text('Manage accounts'),
                ),
              ],
            ),
          )
        ],
      ),
    ));
  }
}
