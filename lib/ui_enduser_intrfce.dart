import 'package:flutter/material.dart';

class UiEnduserIntrfce extends StatefulWidget {
  UiEnduserIntrfce({super.key});

  @override
  _UiEnduserIntrfceState createState() => _UiEnduserIntrfceState();
}

class _UiEnduserIntrfceState extends State<UiEnduserIntrfce> {
  // Define text styles
  static const TextStyle titleTextStyle = TextStyle(
      fontWeight: FontWeight.bold, color: Colors.deepPurple, fontSize: 24);

  static const TextStyle subtitleTextStyle = TextStyle(
      fontWeight: FontWeight.bold,
      color: Color.fromARGB(255, 71, 164, 221),
      fontSize: 20);

  static const TextStyle bodyTextStyle = TextStyle(
      fontWeight: FontWeight.normal, color: Colors.blueGrey, fontSize: 14);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Enduser Interface'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: textItems.map((item) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (item.containsKey('text'))
                    Text(
                      item['text'],
                      style: item['style'],
                    ),
                  if (item.containsKey('image'))
                    GestureDetector(
                      onDoubleTap: () {
                        showGeneralDialog(
                          context: context,
                          barrierDismissible: true,
                          barrierLabel: 'Close',
                          barrierColor: Colors.black.withOpacity(0.9),
                          transitionDuration: const Duration(milliseconds: 300),
                          pageBuilder:
                              (context, animation, secondaryAnimation) {
                            return Scaffold(
                              backgroundColor: Colors.black,
                              body: Center(
                                child: InteractiveViewer(
                                  clipBehavior: Clip.none,
                                  minScale: 1.0,
                                  maxScale: 5.0,
                                  child: item['imageType'] == 'network'
                                      ? Image.network(item['image'])
                                      : Image.asset(item['image']),
                                ),
                              ),
                            );
                          },
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: item['imageType'] == 'network'
                            ? Image.network(item['image'])
                            : Image.asset(item['image']),
                      ),
                    ),
                  const SizedBox(height: 10), // Space between items
                ],
              );
            }).toList(),
          ),
        ),
      ),
    );
  }

  // List of text items with their respective styles and images
  final List<Map<String, dynamic>> textItems = [
    {'text': 'Systems Engineering', 'style': titleTextStyle},
    {'text': 'Product Development', 'style': bodyTextStyle},
    // {
    //   'image':
    //       'http://static.vecteezy.com/system/resources/thumbnails/029/055/182/small_2x/sexy-young-woman-lying-alone-in-black-seductive-lingerie-on-white-sofa-in-tropical-villa-listening-to-music-on-player-in-earphones-smiling-perfect-slim-body-tanned-skin-photo.jpg',
    //   'imageType': 'network'
    // }, // Example image URL
    {'text': 'Change Management', 'style': subtitleTextStyle},
    {'image': 'assets/homescreen.png', 'imageType': 'asset'},
    {'text': 'Mitigate Risks', 'style': bodyTextStyle},
  ];
}
