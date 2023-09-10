import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

///
class RecipesView extends StatelessWidget {
  ///
  const RecipesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: CustomScrollView(
                slivers: [
                  SliverAppBar(
                    title: const Text('Recetas'),
                    actions: [
                      IconButton(
                        onPressed: () {
                          context.push('/new-recipe');
                        },
                        icon: const Icon(Icons.settings),
                      ),
                    ],
                  ),
                  // const MainMenu(),
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
