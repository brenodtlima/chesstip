import 'package:chesstip/components/history_components/list_history_component.dart';
import 'package:chesstip/models/user.dart';
import 'package:chesstip/repositories/match_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';

class UserDetailScreen extends StatelessWidget {
  User user;
  NumberFormat real = NumberFormat.currency(locale: "pt_BR", name: 'R\$');
  UserDetailScreen({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            child: Image.asset(user.avatar),
            width: 150,
          ),
          Text(
            "${user.name} (${user.rating.toString()})",
            style: TextStyle(fontSize: 30),
          ),
          Text(real.format(user.balance)),
          Container(
            width: 250,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [Text("Partidas"), Text(user.matches.toString())],
                ),
                Column(
                  children: [Text("Vitórias"), Text(user.victories.toString())],
                ),
                Column(
                  children: [Text("Derrotas"), Text(user.defeats.toString())],
                )
              ],
            ),
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Column(
                    children: [Text("Partidas")],
                  ),
                ),
              ),
              ListHistoryComponent(
                user: user,
              )
            ],
          )
        ],
      ),
    ));
  }
}
