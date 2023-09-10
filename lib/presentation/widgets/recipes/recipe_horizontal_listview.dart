import 'package:flutter/material.dart';

/// Widget para mostrar las diferentes categorías en forma horizontal con cards
class RecipeHorizontalListView extends StatefulWidget {
  /// Constructor
  const RecipeHorizontalListView({super.key, this.title, this.subTitle});

  ///
  final String? title;

  ///
  final String? subTitle;

  @override
  State<RecipeHorizontalListView> createState() =>
      _RecipeHorizontalListViewState();
}

class _RecipeHorizontalListViewState extends State<RecipeHorizontalListView> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: Column(
        children: [
          _Title(
            title: widget.title,
            subTitle: widget.subTitle,
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 7,
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              itemBuilder: (context, index) {
                return const _Slide();
              },
            ),
          ),
        ],
      ),
    );
  }
}

class _Slide extends StatelessWidget {
  const _Slide();

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 150,
            height: 100,
            child: ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(20)),
              child: Container(
                color: colors.onInverseSurface,
              ),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          const Text('Sancocho'),
        ],
      ),
    );
  }
}

class _Title extends StatelessWidget {
  const _Title({
    this.title,
    this.subTitle,
  });
  final String? title;
  final String? subTitle;

  @override
  Widget build(BuildContext context) {
    final titleStyle = Theme.of(context).textTheme.titleLarge;
    return Container(
      padding: const EdgeInsets.only(top: 10),
      margin: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        children: [
          if (title != null)
            Text(
              title!,
              style: titleStyle,
            ),
          const Spacer(),
          if (subTitle != null)
            FilledButton.tonal(onPressed: () {}, child: Text(subTitle!)),
        ],
      ),
    );
  }
}
