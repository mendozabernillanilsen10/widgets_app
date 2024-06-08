import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Infinite_Scroll_screen extends StatefulWidget {
  static const name = "Infinite_Scroll_screen";

  const Infinite_Scroll_screen({super.key});

  @override
  State<Infinite_Scroll_screen> createState() => _Infinite_Scroll_screenState();
}

class _Infinite_Scroll_screenState extends State<Infinite_Scroll_screen> {
  List<int> imagesIds = [1, 2, 3, 4, 5];

  final ScrollController scrollController = ScrollController();
  bool isLoading = false;

  @override
  void initState() {
    super.initState();

    scrollController.addListener(() {
      if ((scrollController.position.pixels + 500) >=
          scrollController.position.maxScrollExtent) {
        loadNextPage();
      }
    });
  }

  @override
  void dispose() {
    scrollController.dispose();
    // TODO: implement dispose
    super.dispose();
  }

  void moveScrollToBottom() {
    if (scrollController.position.pixels + 100 <=
        scrollController.position.maxScrollExtent) return;

    scrollController.animateTo(scrollController.position.pixels + 120,
        duration: const Duration(milliseconds: 300),
        curve: Curves.fastOutSlowIn);
  }

  void addFiveImages() {
    final lastId = imagesIds.last;
    imagesIds.addAll([1, 2, 3, 4, 5].map((e) => lastId + e));
  }

  Future loadNextPage() async {
    if (isLoading) return;
    isLoading = true;
    setState(() {});

    await Future.delayed(const Duration(seconds: 2));

    addFiveImages();
    isLoading = false;

    if (!isLoading) return;

    setState(() {});
    moveScrollToBottom();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: MediaQuery.removePadding(
        context: context,
        removeTop: true,
        child: ListView.builder(
          controller: scrollController,
          itemCount: imagesIds.length,
          itemBuilder: (context, index) {
            return FadeInImage(
              fit: BoxFit.cover,
              width: double.infinity,
              height: 200,
              placeholder: AssetImage("assets/images/jar-loading.gif"),
              image: NetworkImage(
                  "https://picsum.photos/id/${imagesIds[index]}/500/300"),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => context.pop(),
        tooltip: 'Increment',
        child: Icon(Icons.read_more),
      ),
    );
  }
}
