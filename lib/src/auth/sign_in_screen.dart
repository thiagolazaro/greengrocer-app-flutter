import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:greengrocer/src/auth/components/custom_text_field.dart';
import 'package:greengrocer/src/config/custom_colors.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.customSwatchColor,
      body: Column(
        children: [
          // Logo Nome
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Nome do App
                Text.rich(
                  TextSpan(
                      style: const TextStyle(
                        fontSize: 40,
                      ),
                      children: [
                        const TextSpan(
                          text: 'Green',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(
                          text: 'grocer',
                          style: TextStyle(
                            color: CustomColors.customContrastColor,
                          ),
                        )
                      ]),
                ),

                // Categorias
                SizedBox(
                  height: 30,
                  child: DefaultTextStyle(
                    style: const TextStyle(
                      fontSize: 25,
                    ),
                    child: AnimatedTextKit(
                      pause: Duration.zero,
                      repeatForever: true,
                      animatedTexts: [
                        FadeAnimatedText('Frutas'),
                        FadeAnimatedText('Verdura'),
                        FadeAnimatedText('Legumes'),
                        FadeAnimatedText('Carnes'),
                        FadeAnimatedText('Cereais'),
                        FadeAnimatedText('Laticíneos'),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          // Formulario
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 40),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(45),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                // E-mail
                const CustomTextField(
                  icon: Icons.email,
                  label: 'E-mail',
                ),

                // Senha
                const CustomTextField(
                  icon: Icons.lock,
                  label: 'Senha',
                  isSecret: true,
                ),

                // Botão Entrar
                SizedBox(
                  height: 50,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18),
                      ),
                    ),
                    onPressed: () {},
                    child: const Text(
                      'Entar',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),

                // Botão Esqueceu Senha
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Esquceu a senha?',
                      style: TextStyle(
                        color: Colors.red,
                      ),
                    ),
                  ),
                ),

                // Divisor
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Row(
                    children: [
                      Expanded(
                        child: Divider(
                          color: Colors.grey.withAlpha(90),
                          thickness: 1,
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 15),
                        child: Text('Ou'),
                      ),
                      Expanded(
                        child: Divider(
                          color: Colors.grey.withAlpha(90),
                          thickness: 1,
                        ),
                      ),
                    ],
                  ),
                ),

                // Criar Conta
                SizedBox(
                  height: 50,
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18),
                      ),
                      side: const BorderSide(
                        width: 2,
                        color: Colors.green,
                      ),
                    ),
                    onPressed: () {},
                    child: const Text(
                      'Criar conta',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
