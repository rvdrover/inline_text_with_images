// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Inline text with images',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Inline text with images'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  List<String> textPharase1 = [
    "Hi this is Example",
    "https://picsum.photos/50",
    "image.",
    "I am Going to split this",
    "https://picsum.photos/50",
    "images with",
    "https://picsum.photos/50",
    "combine of text. You can see this",
    "https://picsum.photos/50",
    "image.",
    "https://picsum.photos/50",
    "This is example",
    "https://picsum.photos/50",
    "1 image and text combine with string list",
  ];

  List<TexType> textPharase2 =[
    TexType(text: "Hi this is Example", textType: 'text'),
    TexType(text: "https://picsum.photos/50", textType: 'link'),
    TexType(text: "image.", textType: 'text'),
    TexType(text: "I am Going to split this", textType: 'text'),
    TexType(text: "https://picsum.photos/50", textType: 'link'),
    TexType(text: "images with", textType: 'text'),
    TexType(text: "https://picsum.photos/50", textType: 'link'),
    TexType(text: "combine of text. You can see this", textType: 'text'),
    TexType(text: "https://picsum.photos/50", textType: 'link'),
    TexType(text: "image.", textType: 'text'),
    TexType(text: "https://picsum.photos/50", textType: 'link'),
    TexType(text: "This is example", textType: 'text'),
    TexType(text: "https://picsum.photos/50", textType: 'link'),
    TexType(text: "2 image and text combine with objectlist", textType: 'text'),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text("Example 1 with string list",style: TextStyle(fontSize: 40),),
              RichText(
              text: TextSpan(
                 style: const TextStyle(color: Colors.black,fontSize: 30),
                children: [
                  ...textPharase1.map((e) => !e.startsWith("http", 0)
                        ? TextSpan(
                            text: e,
                          )
                        : WidgetSpan(
                            child: Image.network(e),
                          ))
                  ],
              ),
            ),
            const SizedBox(height: 20,),
            const Text("Example 2 with object list",style: TextStyle(fontSize: 40),),
            RichText(
              text: TextSpan(
                 style: const TextStyle(color: Colors.black,fontSize: 30),
                children: [
                  ...textPharase2.map((e) => e.textType =="text"
                        ? TextSpan(
                            text: e.text,
                          )
                        : WidgetSpan(
                            child: Image.network(e.text),
                          ))
                  ],
              ),
            ),
            ],
          ),
        ),
      ),
    );
  }
}

class TexType {
  final String textType;
  final String text;
  TexType({
    required this.textType,
    required this.text,
  });
}

