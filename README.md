# Controle de Leitura 📚

## Descrição do Aplicativo e seu Objetivo
Este é um aplicativo mobile desenvolvido em **Flutter** como parte da avaliação prática da disciplina de Desenvolvimento para Dispositivos Móveis. O objetivo principal do projeto é aplicar os conceitos fundamentais de Flutter e Dart, simulando um aplicativo de "Controle de Leitura". O aplicativo permite realizar um cadastro fictício, fazer o login e visualizar uma lista dos últimos 5 livros lidos pelo usuário, sem a necessidade de integração com backend ou banco de dados real.

## Funcionalidades Implementadas
* **Validação Simples de Formulário:** Verificação de campos vazios nas telas de cadastro e login.
* **Navegação Dinâmica:** Transição entre telas utilizando empilhamento de rotas e substituição de rotas para garantir o fluxo correto do utilizador.
* **Bloqueio de Retorno:** Proteção de navegação que impede o utilizador de voltar à tela de login usando o botão "voltar" do dispositivo após já estar autenticado.
* **Listagem de Dados:** Exibição estruturada de informações simuladas em formato de lista.

## Descrição das Telas

1. **Tela de Cadastro (`cadastro_screen.dart`):**
   * Contém campos de texto para Nome, E-mail e Senha.
   * Possui um botão "Cadastrar" que faz a validação dos campos.
   * Ao validar com sucesso, exibe uma notificação (`SnackBar`) e retorna automaticamente para a tela de Login.

2. **Tela de Login (`login_screen.dart`):**
   * Contém campos para inserir E-mail e Senha.
   * Botão "Entrar" que, após a validação simulada dos dados, navega para a tela Home.
   * Botão em texto para redirecionar utilizadores sem conta para a Tela de Cadastro.

3. **Tela Home (`home_screen.dart`):**
   * Exibe uma mensagem personalizada de boas-vindas utilizando o nome do utilizador ("Bem-vindo(a), Aluno").
   * Apresenta uma lista (`ListView`) com os últimos 5 livros lidos, exibindo título e autor em formato de cartões (`Card`).
   * Implementa o bloqueio de navegação, ocultando a seta de voltar e impedindo o retorno ao Login.

## Conceitos Utilizados
Durante o desenvolvimento deste aplicativo, foram aplicados diversos conceitos ensinados nas aulas:
* **Dart:** Uso de tipagem, classes, métodos e coleções (List e Map) para simular os dados dos livros lidos.
* **Widgets Layout e UI:** Utilização de `Scaffold`, `AppBar`, `Padding`, `Column`, `TextField`, `ElevatedButton`, `Card` e `ListTile` para construir a interface visual.
* **Gerenciamento de Estado:** Uso de `StatefulWidget` e da função `setState()` para atualizar a interface dinamicamente e mostrar mensagens de erro na validação dos campos.
* **Controllers:** Aplicação de `TextEditingController` para capturar as entradas de texto do utilizador e `dispose()` para libertar recursos de memória.
* **Navegação (Navigator):** 
  * `Navigator.push()`: para abrir a tela de Cadastro.
  * `Navigator.pop()`: para fechar a tela de Cadastro e voltar ao Login.
  * `Navigator.pushReplacement()`: para ir à Home e destruir a tela de Login da pilha de navegação, impedindo o retorno indesejado.

## Instruções para Executar o Projeto Localmente

Siga os passos abaixo para rodar o aplicativo no seu computador:

**Pré-requisitos:**
* Ter o [Flutter SDK](https://flutter.dev/docs/get-started/install) instalado e configurado na máquina.
* Ter um emulador Android/iOS configurado via Android Studio, ou o ambiente habilitado para Desktop (Windows/Mac/Linux), ou um dispositivo físico conectado via Depuração USB.

**Passos:**
1. Clone este repositório para a sua máquina local:
   ```bash
   git clone https://github.com/SEU_USUARIO/controle_leitura.git
Acesse a pasta do projeto através do terminal:
Instale as dependências necessárias do Flutter:
Verifique se existe algum dispositivo disponível e reconhecido:
Execute o aplicativo:
