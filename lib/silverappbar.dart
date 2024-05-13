import 'package:flutter/material.dart';

class ScrollingAppBarExample extends StatelessWidget {
  const ScrollingAppBarExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('data'),
      ),
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              backgroundColor: Colors.amberAccent[100],
              expandedHeight: 200.0,
              floating: false,
              pinned: true,
              flexibleSpace: const FlexibleSpaceBar(
           title: Text("rour9tui"),
              ),
            ),
          ];
        },
        body: ListView.builder(
          itemCount: 20,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              title: Text('Item $index'),
            );
          },
        ),
      ),
    );
  }
}