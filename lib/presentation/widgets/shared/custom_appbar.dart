import 'package:flutter/material.dart';

/// Widget que construye la barra de búsqueda
class CustomAppBar extends StatelessWidget {
  /// constructor
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    final titleStyle = Theme.of(context).textTheme.titleMedium;

    // * SafeArea
    // lo utilizamos para que no tenga en cuenta los espacios
    // que ocupa la barra de herramientas donde está la carga del celular, hora
    // entre otras
    return SafeArea(
      //* Padding
      // para separar unos pixeles de los bordes del celular
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        //* SizeBox
        // para tomar to-do el ancho posible del widget padre
        // con width: double.infinity
        child: SizedBox(
          width: double.infinity,
          //* Row
          // Agregamos una Row ya que será para navegación horizontal
          child: Row(
            children: [
              Text(
                'Recetas',
                style: titleStyle,
              ),
              //* Spacer
              // rellena con un espacio entre widgets
              // para ocupar el ancho completo
              const Spacer(),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.search_outlined),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
