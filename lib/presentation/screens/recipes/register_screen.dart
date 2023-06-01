import 'package:flutter/material.dart';
import 'package:recipes_app/config/constants/messages.dart';
import 'package:recipes_app/presentation/widgets/widgets.dart';

///
class RegisterScreen extends StatelessWidget {
  ///
  const RegisterScreen({super.key});

  ///register name router
  static const String name = 'register-screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(Message.registerTitle),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: const _RegisterView(),
    );
  }
}

class _RegisterView extends StatelessWidget {
  const _RegisterView();

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(
                height: 20,
              ),
              _RegisterForm(),
              SizedBox(
                height: 20,
              )
            ],
          ),
        ),
      ),
    );
  }
}

class _RegisterForm extends StatelessWidget {
  const _RegisterForm();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Form(
      child: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          const CustomTextFormField(
            label: 'Título',
            hint: 'Nombre que le pondrás a la receta',
            maxLength: 50,
          ),
          const SizedBox(
            height: 10,
          ),
          const CustomTextFormField(
            maxLines: 5,
            label: 'Ingredientes',
            hint: '''
Aquí puedes colocar la lista de ingredientes que lleva la receta
                ''',
            maxLength: 500,
          ),
          const SizedBox(
            height: 10,
          ),
          const CustomTextFormField(
            maxLines: 5,
            label: 'Preparación',
            hint: '''
Puedes colocar los pasos a tener en cuenta para la preparación de la receta
                ''',
            maxLength: 500,
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Tiempo de preparación:'),
                const SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: Center(
                    child: SizedBox(
                      width: 50,
                      child: TextFormField(
                        maxLength: 4,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  'Minutos',
                  style: theme.textTheme.labelMedium,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          FilledButton.tonalIcon(
            onPressed: () {},
            icon: const Icon(Icons.save),
            label: const Text('Crear receta'),
          ),
        ],
      ),
    );
  }
}
