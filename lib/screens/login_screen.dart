import 'package:flutter/material.dart';
import 'cadastro_screen.dart';
import 'home_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _senhaController = TextEditingController();
  String _mensagemErro = '';

  void _fazerLogin() {
    setState(() {
      if (_emailController.text.isEmpty || _senhaController.text.isEmpty) {
        _mensagemErro = 'Por favor, preencha e-mail e senha.';
      } else {
        _mensagemErro = '';
        // Simulando que o nome do usuário logado é "Aluno"
        // Usa pushReplacement para que não seja possível voltar ao login [1, 4]
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const HomeScreen(nomeUsuario: 'Aluno (Simulado)'),
          ),
        );
      }
    });
  }

  @override
  void dispose() {
    _emailController.dispose();
    _senhaController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Login')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _emailController,
              decoration: const InputDecoration(labelText: 'Email'),
              keyboardType: TextInputType.emailAddress,
            ),
            TextField(
              controller: _senhaController,
              decoration: const InputDecoration(labelText: 'Senha'),
              obscureText: true,
            ),
            const SizedBox(height: 10),
            if (_mensagemErro.isNotEmpty)
              Text(_mensagemErro, style: const TextStyle(color: Colors.red)),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _fazerLogin,
              child: const Text('Entrar'),
            ),
            TextButton(
              onPressed: () {
                // Navega para a tela de cadastro empilhando a rota [5]
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const CadastroScreen()),
                );
              },
              child: const Text('Não tem conta? Cadastre-se'),
            )
          ],
        ),
      ),
    );
  }
}