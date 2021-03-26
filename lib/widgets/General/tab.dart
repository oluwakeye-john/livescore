import 'package:flutter/material.dart';
import 'package:sport_app/models/tab.dart';
import 'package:sport_app/utils/responsive.dart';
import 'package:sport_app/widgets/General/gradient.dart';

class _MatchTabItem extends StatelessWidget {
  final String title;
  _MatchTabItem({required this.title});

  @override
  Widget build(BuildContext context) {
    return (Container(
      height: 50,
      child: Center(
        child: Text(title),
      ),
    ));
  }
}

class CustomTab extends StatelessWidget {
  final List<TabItem> items;
  CustomTab({required this.items});

  getTabs() {
    return items
        .map((e) => _MatchTabItem(
              title: e.name,
            ))
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: items.length,
      child: (Column(
        children: [
          TabBar(
              indicator: BoxDecoration(
                  gradient: customGradient(),
                  borderRadius: BorderRadius.circular(23)),
              tabs: getTabs()),
          Container(
              height: 1000,
              margin: EdgeInsets.only(
                  top: getResponsiveHeight(context: context, height: 3),
                  bottom: getResponsiveHeight(context: context, height: 5)),
              child: TabBarView(children: items.map((e) => e.child).toList()))
        ],
      )),
    );
  }
}
