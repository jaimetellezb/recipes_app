import 'package:flutter/material.dart';

/// Widget para mostrar las diferentes categorías en forma horizontal con cards
class CategoryHorizontalListView extends StatefulWidget {
  /// Constructor
  const CategoryHorizontalListView({super.key, this.title, this.subTitle});

  ///
  final String? title;

  ///
  final String? subTitle;

  @override
  State<CategoryHorizontalListView> createState() =>
      _CategoryHorizontalListViewState();
}

class _CategoryHorizontalListViewState
    extends State<CategoryHorizontalListView> {
  final categories = const <String>[
    'Sopas',
    'Ensaladas',
    'Pastelería',
    'Pastas',
    'Salsas',
    'Comidas rápidas',
    'Postres'
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: Column(
        children: [
          _Title(
            title: widget.title,
            subTitle: widget.subTitle,
          ),
          Expanded(
            child: ListView.builder(
              itemCount: categories.length,
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              itemBuilder: (context, index) {
                return _Slide(categories[index]);
              },
            ),
          ),
        ],
      ),
    );
  }
}

class _Slide extends StatelessWidget {
  const _Slide(this.category);
  final String category;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 5,
          ),
          FilledButton.tonal(onPressed: () {}, child: Text(category)),
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
            FilledButton.tonal(onPressed: () {}, child: Text(subTitle!))
        ],
      ),
    );
  }
}
