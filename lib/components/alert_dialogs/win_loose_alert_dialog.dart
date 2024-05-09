import 'package:chesstip/screens/loading_match_screen.dart';
import 'package:chesstip/screens/match_screen.dart';
import 'package:flutter/material.dart';
import 'dart:math';
import '../../screens/home.dart';

class WinLooseAlertDialog extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => WinLooseAlertDialogState();
}

class WinLooseAlertDialogState extends State<WinLooseAlertDialog>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> scaleAnimation;

  @override
  void initState() {
    super.initState();

    controller =
        AnimationController(vsync: this, duration: const Duration(milliseconds: 450));
    scaleAnimation =
        CurvedAnimation(parent: controller, curve: Curves.elasticInOut);

    controller.addListener(() {
      setState(() {});
    });

    controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Material(
        color: Colors.transparent,
        child: ScaleTransition(
          scale: scaleAnimation,
          child: Container(
            decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0))),
            child: Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 10),
              child: Container(
                width: 300,
                height: 140,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Random().nextBool() ?
                    const Column(
                      children: [
                        Text(
                          "Vitória",
                          style: TextStyle(color: Colors.black, fontSize: 20),
                        ),
                        Text(
                          "+ R\$5,00",
                          style: TextStyle(color: Colors.green),
                        )
                      ],
                    )
                    :
                    const Column(
                      children: [
                        Text(
                          "Derrota",
                          style: TextStyle(color: Colors.black, fontSize: 20),
                        ),
                        Text(
                          "- R\$5,00",
                          style: TextStyle(color: Colors.red),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        OutlinedButton(
                          child: const Text("Sair"),
                          style: OutlinedButton.styleFrom(
                            foregroundColor: Colors.red,
                            side: const BorderSide(
                              color: Colors.red,
                            ),
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Home()));
                          },
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        ElevatedButton(
                          child: const Text("Jogar novamente"),
                          style: ElevatedButton.styleFrom(
                              foregroundColor: Colors.black,
                              elevation: 0,
                              side: const BorderSide(
                                color: Colors.black54,
                              )),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const LoadingMatchScreen()));
                          },
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
