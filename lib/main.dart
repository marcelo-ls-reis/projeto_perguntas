import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';


void main() => runApp(
      PerguntaApp(),
    );

class PerguntaAppState extends State<PerguntaApp> {
  var perguntaSelecionada = 0;

  void responder() {
    setState(() {
      perguntaSelecionada ++;
    });
      if (kDebugMode) {
        print('perguntaSelecionada: $perguntaSelecionada');
      }
  }

  @override
  Widget build(BuildContext context) {
    
  final perguntas = [
    'Qual é a sua cor favorita?',
    'Qual é o seu animal favorito?',
  ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Perguntas'),
        ),
                body: Column(
                  children: [
                    Text(perguntas[perguntaSelecionada]),
                    ElevatedButton(
                      onPressed: responder,
                      child: const Text('Resposta 1'),
                    ),
                    ElevatedButton(
                      onPressed:responder,
                      child: const Text('Resposta 2'),
                      ),
                    ElevatedButton(
                      onPressed: responder,
                      child: const Text('Resposta 3'),
                    ),
                  ],
                ),
              ),
            );
          }
}  

// ignore: use_key_in_widget_constructors
class PerguntaApp extends StatefulWidget {

  @override
  PerguntaAppState createState() {
    return PerguntaAppState();
  } 
}


