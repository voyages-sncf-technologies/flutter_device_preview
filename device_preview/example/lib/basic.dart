import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

class BasicApp extends StatelessWidget {
  const BasicApp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: DevicePreview.appBuilder,
      locale: DevicePreview.locale(context),
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Basic'),
      ),
      body: ListView(
        children: [
          ...Iterable.generate(
            100,
            (i) => ListTile(
              title: Text('Tile $i'),
              onTap: () {},
            ),
          )
        ],
      ),
    );
  }
}
