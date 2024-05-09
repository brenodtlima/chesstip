import 'package:chesstip/components/history_components/defeat_history_component.dart';
import 'package:chesstip/components/history_components/win_history_component.dart';
import 'package:chesstip/models/user.dart';
import 'package:chesstip/repositories/match_repository.dart';
import 'package:flutter/material.dart';

class ListHistoryComponent extends StatelessWidget {
  User user;
  final matches = MatchRepository.matches;
  ListHistoryComponent({super.key, required this.user});

  winMatch(match) {
    return match.winnerId == user.id;
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemBuilder: ((context, index) {
        if (winMatch(matches[index])) {
          return WinHistoryComponent(match: matches[index]);
        } else {
          return DefeatHistoryComponent(match: matches[index]);
        }
      }),
      itemCount: matches.length,
    );
  }
}
