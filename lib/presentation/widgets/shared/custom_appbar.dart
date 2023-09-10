import 'package:flutter/material.dart';

/// Widget que construye la barra de búsqueda
class CustomAppBar extends StatelessWidget {
  /// constructor
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    final titleStyle = Theme.of(context).textTheme.titleMedium;
    final colors = Theme.of(context).colorScheme;

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
              //* Container
              // Buscador de recetas
              Expanded(
                child: Container(
                  margin: const EdgeInsets.only(left: 20, right: 20),
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: colors.onBackground.withOpacity(0.1),
                        blurRadius: 20,
                      ),
                    ],
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      contentPadding: const EdgeInsets.all(20),
                      hintText: 'Buscar receta',
                      hintStyle: const TextStyle(
                        color: Color(0xffDDDADA),
                        fontSize: 14,
                      ),
                      prefixIcon: const Padding(
                        padding: EdgeInsets.all(12),
                      ),
                      suffixIcon: SizedBox(
                        width: 100,
                        child: IntrinsicHeight(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              const VerticalDivider(
                                color: Colors.black,
                                indent: 10,
                                endIndent: 10,
                                thickness: 0.2,
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.search_outlined),
                              ),
                            ],
                          ),
                        ),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
