import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  final String nomeUsuario;

  const HomeScreen({super.key, required this.nomeUsuario});

  @override
  Widget build(BuildContext context) {
    // Lista simulada dos últimos 5 livros lidos [1]
    final List<Map<String, String>> ultimosLivros = [
      {'titulo': '1984', 'autor': 'George Orwell'},
      {'titulo': 'O Senhor dos Anéis', 'autor': 'J.R.R. Tolkien'},
      {'titulo': 'Dom Casmurro', 'autor': 'Machado de Assis'},
      {'titulo': 'A Revolução dos Bichos', 'autor': 'George Orwell'},
      {'titulo': 'O Pequeno Príncipe', 'autor': 'Antoine de Saint-Exupéry'},
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        // Remove automaticamente a seta de voltar se existir,
        // garantindo a regra de não retornar ao login
        automaticallyImplyLeading: false, 
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Bem-vindo(a), $nomeUsuario!',
              style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            const Text(
              'Últimos 5 livros lidos:',
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 10),
            // Expanded é usado para o ListView ocupar o restante da tela [6]
            Expanded(
              child: ListView.builder(
                itemCount: ultimosLivros.length,
                itemBuilder: (context, index) {
                  final livro = ultimosLivros[index];
                  return Card(
                    child: ListTile(
                      leading: const Icon(Icons.book),
                      title: Text(livro['titulo']!),
                      subtitle: Text(livro['autor']!),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}