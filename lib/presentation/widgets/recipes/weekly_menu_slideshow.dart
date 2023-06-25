import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';

/// Widget encargado de mostrar horizontalmente las cards con los Menús
/// de comida de Lunes a Domingo en cards diferentes.
class WeeklyMenuSlideShow extends StatelessWidget {
  /// Constructor
  const WeeklyMenuSlideShow({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    const list = <String>[
      'Lunes',
      'Martes',
      'Miércoles',
      'Jueves',
      'Viernes',
      'Sábado',
      'Domingo'
    ];

    //* SizeBox
    // lo utilizamos para darle un alto fijo y que tome el ancho completo
    return SizedBox(
      height: 200,
      width: double.infinity,
      //* Swiper
      // es un paquete para mostrar cards en un carrusel, en este caso
      // se mostrarán 7 siempre
      child: Swiper(
        pagination: SwiperPagination(
          builder: DotSwiperPaginationBuilder(
            activeColor: colors.primary,
            color: colors.secondary,
          ),
        ),
        viewportFraction: 0.8,
        scale: 0.8, // que tan grande es la card
        autoplay: true, // hace se esté pasando las cards de forma horizontal
        itemCount: list.length,
        itemBuilder: (context, index) {
          return _Slide(list[index]);
        },
      ),
    );
  }
}

class _Slide extends StatelessWidget {
  const _Slide(this.item);

  final String item;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    //* BoxDecoration
    //* Dentro de un DecoratedBox, el decoration hace referencia como a la
    //* sombra del widget
    const decoration = BoxDecoration(
      borderRadius: BorderRadius.all(
        Radius.circular(15),
      ),
      boxShadow: [
        BoxShadow(
          color: Colors.black45,
          blurRadius: 10,
          offset: Offset(0, 10),
        )
      ],
    );

    return Padding(
      padding: const EdgeInsets.only(bottom: 30),
      child: DecoratedBox(
        decoration: decoration,
        //* ClipRReact widget que nos sirve para decorar de forma rectángular
        child: ClipRRect(
          // es la curva que queremos darle al rectángulo en sus esquinas
          borderRadius: const BorderRadius.all(Radius.circular(15)),
          child: ColoredBox(
            color: colors.secondaryContainer,
            child: Center(
              child: Text(item),
            ),
          ),
        ),
      ),
    );
  }
}
