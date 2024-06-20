import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

class SlideInfo {
  final String title;
  final String caption;
  final String imageUrl;
  SlideInfo(this.title, this.caption, this.imageUrl);
}

final slides = <SlideInfo>[
  SlideInfo(
    "Slide 1",
    "This is the first slide.",
    "assets/images/1.png",
  ),
  SlideInfo(
    "Slide 2",
    "This is the second slide.",
    "assets/images/2.png",
  ),
  SlideInfo(
    "Slide 3",
    "This is the third slide.",
    "assets/images/3.png",
  ),
];

class AppTutorialScreen extends StatefulWidget {
  static const name = "AppTutorialScreen";

  const AppTutorialScreen({Key? key}) : super(key: key);

  @override
  State<AppTutorialScreen> createState() => _AppTutorialScreenState();
}

class _AppTutorialScreenState extends State<AppTutorialScreen> {
  late final PageController pageviewcontrollers = PageController();
  bool llegofinal = false;
  @override
  void initState() {
    super.initState();

    pageviewcontrollers.addListener(() {
      final page = pageviewcontrollers.page ?? 0;

      if (!llegofinal && page >= (slides.length - 1.5)) {
        setState(() {
          llegofinal = true;
        });
      }
      //  print('${pageviewcontrollers}');
    });
  }

  @override
  void dispose() {
    pageviewcontrollers.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          PageView(
            controller: pageviewcontrollers,
            physics: const BouncingScrollPhysics(),
            children: slides
                .map((slideData) => _Slide(
                    title: slideData.title,
                    caption: slideData.caption,
                    imageUrl: slideData.imageUrl))
                .toList(),
          ),
          Positioned(
            top: 50,
            right: 20,
            child: TextButton(
              child: Text(
                "Saltar ",
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
          llegofinal
              ? Positioned(
                  right: 20,
                  bottom: 20,
                  child: FadeInRight(
                    from: 15,
                    delay: const Duration(seconds: 1),
                    child: FilledButton(
                      child: Text(
                        "Comenzar ",
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ),
                )
              : const SizedBox(),
        ],
      ),
    );
  }
}

class _Slide extends StatelessWidget {
  final String title;
  final String caption;
  final String imageUrl;

  const _Slide({
    required this.title,
    required this.caption,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    final titleStyle = Theme.of(context).textTheme.titleLarge;
    final captionStyle = Theme.of(context).textTheme.bodySmall;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(image: AssetImage(imageUrl)),
          const SizedBox(height: 20),
          Text(title, style: titleStyle),
          const SizedBox(height: 10),
          Text(caption, style: captionStyle, textAlign: TextAlign.center),
        ],
      ),
    );
  }
}
