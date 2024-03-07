import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SlideInfo {
  final String title;
  final String caption;
  final String imageUrl;

  SlideInfo(this.title, this.caption, this.imageUrl);
}

final slides = <SlideInfo>[
  SlideInfo(
      'Busca La comida',
      'Aute irure ea fugiat enim duis pariatur elit. Aliqua fugiat minim consequat veniam officia enim veniam commodo proident veniam eiusmod labore. Incididunt occaecat exercitation irure proident qui adipisicing et ipsum pariatur fugiat enim ad. Ea irure ipsum dolor culpa et.',
      'assets/images/1.png'),
  SlideInfo(
      'Entrega rapida',
      'Excepteur culpa ipsum ipsum proident cupidatat anim proident reprehenderit fugiat cillum commodo ea do excepteur. Dolor eiusmod occaecat commodo consectetur magna proident dolor aliqua ea fugiat labore tempor in. Est culpa duis mollit ea id qui id laboris ea ullamco irure aliquip proident. Ut ullamco est dolor consectetur adipisicing excepteur aliqua.',
      'assets/images/2.png'),
  SlideInfo(
      'Disfruta la comida',
      'Et cupidatat dolore quis esse reprehenderit mollit id elit dolor dolor mollit officia commodo. Deserunt amet ea irure pariatur dolore cupidatat adipisicing anim in. Culpa in sint occaecat adipisicing sunt dolore Lorem proident commodo. Amet consectetur non enim anim anim. Nulla fugiat sint veniam aliquip eu pariatur dolore cupidatat enim excepteur.',
      'assets/images/3.png'),
];

class AppTutorialScreen extends StatefulWidget {
  static const String name = 'app_tutorial_screen';

  const AppTutorialScreen({super.key});

  @override
  State<AppTutorialScreen> createState() => _AppTutorialScreenState();
}

class _AppTutorialScreenState extends State<AppTutorialScreen> {
  final PageController pageViewController = PageController();
  bool endReach = false;

  @override
  void initState() {
    super.initState();
    pageViewController.addListener(() {
      final page = pageViewController.page ?? 0;

      if (!endReach && page >= (slides.length - 1.5)) {
        setState(() {
          endReach = true;
        });
      }
    });
  }

  //llamar simepre que use use un addlistener o se cree un pageviewcontroller
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          PageView(
              controller: pageViewController,
              physics: const BouncingScrollPhysics(),
              children: slides
                  .map((slideData) => _Slide(
                      title: slideData.title,
                      caption: slideData.caption,
                      imageUrl: slideData.imageUrl))
                  .toList()),
          Positioned(
            right: 20,
            top: 50,
            child: TextButton(
              child:
                  const Text('Omitir', style: TextStyle(color: Colors.black)),
              onPressed: () => context.pop(),
            ),
          ),
          endReach
              ? Positioned(
                  bottom: 20,
                  right: 20,
                  child: FadeInRight(
                    from: 15,
                    delay: const Duration(seconds: 1),
                    child: FilledButton(
                      child: const Text('Comenzar'),
                      onPressed: () => context.pop(),
                    ),
                  ))
              : const SizedBox()
        ],
      ),
    );
  }
}

class _Slide extends StatelessWidget {
  final String title;
  final String caption;
  final String imageUrl;

  const _Slide(
      {required this.title, required this.caption, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    final titleStyle = Theme.of(context).textTheme.titleLarge;
    final captionStyle = Theme.of(context).textTheme.bodySmall;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image(image: AssetImage(imageUrl)),
            const SizedBox(height: 20),
            Text(
              title,
              style: titleStyle,
            ),
            const SizedBox(height: 20),
            Text(
              caption,
              style: captionStyle,
            )
          ],
        ),
      ),
    );
  }
}
