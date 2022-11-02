import 'package:flutter/material.dart';
import 'package:greengrocer/src/pages/common_widgets/custom_text_field.dart';

class ProfileTab extends StatelessWidget {
  const ProfileTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pefil do usuário'),

        // Icone Logout
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.logout),
          ),
        ],
      ),

      // Formularios campos
      body: ListView(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.fromLTRB(16, 32, 16, 16),
        children: const [
          // E-mail
          CustomTextField(
            icon: Icons.email,
            label: 'E-mail',
          ),

          // Nome
          CustomTextField(
            icon: Icons.person,
            label: 'Nome',
          ),

          // Celular
          CustomTextField(
            icon: Icons.phone,
            label: 'Celular',
          ),

          // CPF
          CustomTextField(
            icon: Icons.file_copy,
            label: 'CPF',
            isSecret: true,
          ),

          // Botão atualizar a senha
        ],
      ),
    );
  }
}
