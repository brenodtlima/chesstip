import 'package:chesstip/components/custom_app_bar.dart';
import 'package:chesstip/components/history_components/list_history_component.dart';
import 'package:chesstip/components/history_components/win_history_component.dart';
import 'package:chesstip/models/user.dart';
import 'package:chesstip/repositories/match_repository.dart';
import 'package:flutter/material.dart';

import '../components/history_components/defeat_history_component.dart';

class HistoryScreen extends StatefulWidget {
  User user;
  HistoryScreen({Key? key, required this.user}) : super(key: key);

  @override
  State<HistoryScreen> createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
  final matches = MatchRepository.matches;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(),
        body: ListHistoryComponent(
          user: widget.user,
        ));
  }
}
