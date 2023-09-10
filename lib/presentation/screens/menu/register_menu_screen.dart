// ignore_for_file: public_member_api_docs

import 'package:flutter/material.dart';
import 'package:recipes_app/config/constants/messages.dart';
import 'package:recipes_app/presentation/widgets/widgets.dart';

///
class RegisterMenuScreen extends StatelessWidget {
  ///
  const RegisterMenuScreen({required this.day, super.key});
  final String day;

  ///register name router
  static const String name = 'register-menu-screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(Message.registerMenuTitle),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: const _RegisterMenuView(),
    );
  }
}

class _RegisterMenuView extends StatelessWidget {
  const _RegisterMenuView();

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
              _RegisterMenuForm(),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _RegisterMenuForm extends StatefulWidget {
  const _RegisterMenuForm();

  @override
  State<_RegisterMenuForm> createState() => _RegisterMenuFormState();
}

class _RegisterMenuFormState extends State<_RegisterMenuForm> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  String soup = '';
  String tray = '';
  String drink = '';
  String dessert = '';

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          CustomTextFormField(
            label: 'Sopa',
            hint: 'Ingresa la sopa del menú',
            maxLength: 50,
            onChanged: (value) => soup = value,
            validator: (value) {
              if (value == null || value.isEmpty) return 'Campo requerido';
              if (value.trim().isEmpty) return 'Campo requerido';
              if (value.trim().length >= 50) return 'Máximo 50 letras';
              return null;
            },
          ),
          const SizedBox(
            height: 10,
          ),
          CustomTextFormField(
            maxLines: 4,
            label: 'Bandeja',
            hint: 'Ingresa lo que harás para el plato principal',
            maxLength: 500,
            onChanged: (value) => tray = value,
            validator: (value) {
              if (value == null || value.isEmpty) return 'Campo requerido';
              if (value.trim().isEmpty) return 'Campo requerido';
              if (value.trim().length >= 500) return 'Máximo 500 letras';
              return null;
            },
          ),
          const SizedBox(
            height: 10,
          ),
          CustomTextFormField(
            label: 'Bebida',
            hint: 'Ingresa La bebida para acompañar el plato',
            onChanged: (value) => drink = value,
            validator: (value) {
              if (value == null || value.isEmpty) return 'Campo requerido';
              if (value.trim().isEmpty) return 'Campo requerido';
              if (value.trim().length >= 100) return 'Máximo 100 letras';
              return null;
            },
          ),
          const SizedBox(
            height: 10,
          ),
          CustomTextFormField(
            maxLines: 2,
            label: 'Postre',
            hint: 'Ingresa el postre',
            maxLength: 500,
            onChanged: (value) => dessert = value,
          ),
          const SizedBox(
            height: 20,
          ),
          FilledButton.tonalIcon(
            onPressed: () {
              final isValid = _formKey.currentState!.validate();

              if (!isValid) return;

              print('$soup, $tray, $drink, $dessert');
              // context.go('/home/0');
            },
            icon: const Icon(Icons.save),
            label: const Text('Actualizar menú'),
          ),
        ],
      ),
    );
  }
}
