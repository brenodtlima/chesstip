import 'package:flutter/material.dart';
import '../components/buttons/custom_rounded_wide_button_fade.dart';
import '../screens/home.dart';

class FormLogin {
  static void show(BuildContext context, Function() onSubmit) {
    String labelTitle = "Login";

    TextEditingController username = TextEditingController();
    TextEditingController password = TextEditingController();
    TextEditingController email = TextEditingController();
    TextEditingController companyKey = TextEditingController();

    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(24),
        ),
      ),
      builder: (context) {
        return Container(
          constraints: BoxConstraints(
            maxHeight: MediaQuery.of(context).size.height,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                padding: EdgeInsets.all(15),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(
                      height: 25,
                    ),
                    Text(
                      labelTitle,
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.headline5,
                    ),
                  ],
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    padding: EdgeInsets.only(left: 32, right: 32, bottom: 32),
                    child: Column(
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(left: 20.0, bottom: 10),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Email",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          height: 50,
                          decoration: const BoxDecoration(
                            color: Color(0xFFEFEFEF),
                            borderRadius:
                                BorderRadius.all(Radius.circular(30.0)),
                          ),
                          child: TextFormField(
                            controller: email,
                            keyboardType: TextInputType.text,
                            decoration: const InputDecoration(
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 15.0, horizontal: 20.0),
                              hintText: 'usuário123',
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 20.0, bottom: 10),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Senha",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          height: 50,
                          decoration: const BoxDecoration(
                            color: Color(0xFFEFEFEF),
                            borderRadius:
                                BorderRadius.all(Radius.circular(30.0)),
                          ),
                          child: TextFormField(
                            controller: password,
                            keyboardType: TextInputType.text,
                            decoration: const InputDecoration(
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 15.0, horizontal: 20.0),
                              hintText: 'Senha',
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                        const SizedBox(height: 25),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 1,
              ),
              Container(
                padding: EdgeInsets.only(left: 25, right: 25, bottom: 15),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    CustomRoundedWideButtonFade(
                      text: 'Entrar',
                      firstColor: const Color(0xFF8ED782),
                      secondColor: const Color(0xFF598D50),
                      width: 328,
                      height: 47,
                      bool_shadow: true,
                      onPressed: () {
                        Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(builder: (context) => Home()),
                            ModalRoute.withName("/Home"));
                      },
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              )
            ],
          ),
        );
      },
    );
  }
}

void logar(String email, String password, context) {}
