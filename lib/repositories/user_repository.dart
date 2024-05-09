import 'package:chesstip/models/user.dart';
import 'package:flutter/material.dart';

class UserRepository extends ChangeNotifier {
  static User user = User(
      id: 1,
      name: "Fabiano Caruana",
      balance: 100,
      victories: 550,
      matches: 567,
      defeats: 10,
      rating: 2400,
      email: "test@test.com",
      senha: "1234");

  static List<User> users = [
    User(
        id: 1,
        name: "Leonardo",
        balance: 100.00,
        victories: 1,
        matches: 2,
        defeats: 1,
        rating: 1100,
        email: "test@test.com",
        senha: "1234"),
    User(
        id: 2,
        name: "Luis",
        balance: 100.00,
        victories: 1,
        matches: 2,
        defeats: 1,
        rating: 1100,
        email: "test@test.com",
        senha: "1234"),
    User(
        id: 3,
        name: "Mauro",
        balance: 100.00,
        victories: 1,
        matches: 2,
        defeats: 1,
        rating: 1100,
        email: "test@test.com",
        senha: "1234"),
  ];

}
