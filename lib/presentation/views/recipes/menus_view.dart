import 'package:flutter/material.dart';
import 'package:recipes_app/presentation/widgets/shared/main_menu.dart';

///
class MenusView extends StatelessWidget {
  ///
  const MenusView({super.key});

  @override
  Widget build(BuildContext context) {
    const Key centerKey = ValueKey<String>('bottom-sliver-list');
    return const Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(20),
              child: CustomScrollView(
                slivers: [
                  SliverAppBar(
                    title: Text('Menú semanal'),
                    // actions: [
                    //   IconButton(
                    //     onPressed: () {
                    //       context.push('/new-recipe');
                    //     },
                    //     icon: const Icon(Icons.settings),
                    //   ),
                    // ],
                  ),
                  MainMenu(),
                ],
              ),
            ),
          ),

          // Ad Banner
          // adBannerAsync.when(
          //   data: (bannerAd) => SizedBox(
          //     width: bannerAd.size.width.toDouble(),
          //     height: bannerAd.size.height.toDouble(),
          //     child: AdWidget( ad: bannerAd ),
          //   ),
          //   error: (_, __) => const SizedBox(),
          //   loading: () => const SizedBox(),
          // ),
        ],
      ),
    );
  }
}
