import 'package:flutter/material.dart';

import '../components/placeholders/avatar_placeholder.dart';
import 'match_screen.dart';

class LoadingMatchScreen extends StatefulWidget {
  const LoadingMatchScreen({Key? key}) : super(key: key);

  @override
  State<LoadingMatchScreen> createState() => _LoadingMatchScreenState();
}

class _LoadingMatchScreenState extends State<LoadingMatchScreen> {
  @override
  void initState() {
    // Após 5 segundos, navega para a próxima página
    Future.delayed(Duration(seconds: 5), () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => MatchScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/chess-bg2.png'),
                  fit:
                      BoxFit.cover // Ajusta a imagem para preencher o container
                  ),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 150, bottom: 150),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AvatarPlaceholder(width: 150, height: 150),
                  Text(
                    'VS',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontFamily: 'GowunDodum',
                      fontWeight: FontWeight.w400,
                      shadows: [
                        Shadow(
                          color: Colors.black.withOpacity(0.4),
                          blurRadius: 10,
                          offset: Offset(0,
                              4), // Define a posição da sombra (horizontal, vertical)
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 150,
                    height: 150,
                    decoration: BoxDecoration(
                        color: Color(0xffF0EFEB),
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            spreadRadius: 8,
                            blurRadius: 3,
                            offset: const Offset(
                                2, 2), // changes position of shadow
                          ),
                        ]),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(
                        "gifs/loading.gif", // caminho da imagem
                        fit: BoxFit
                            .cover, // ajuste da imagem dentro do contêiner
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
