import 'package:chesstip/models/user.dart';
import 'package:flutter/material.dart';

class FriendsRepository extends ChangeNotifier {
  static List<User> friends = [
    User(
        id: 1,
        name: "Henrique",
        balance: 1250.00,
        victories: 127,
        matches: 200,
        defeats: 58,
        rating: 922,
        email: "test@test.com",
        senha: "1234"),
    User(
        id: 2,
        name: "Brunna",
        balance: 300.00,
        victories: 400,
        matches: 700,
        defeats: 300,
        rating: 900,
        email: "test@test.com",
        senha: "1234"),
    User(
        id: 3,
        name: "Breno",
        balance: 450.00,
        victories: 450,
        matches: 700,
        defeats: 200,
        rating: 1500,
        email: "test@test.com",
        senha: "1234"),
  ];

}