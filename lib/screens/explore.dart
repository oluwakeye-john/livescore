import 'package:flutter/material.dart';
import 'package:sport_app/layout.dart';
import 'package:sport_app/utils/responsive.dart';

class Explore {
  final String imagePath;
  final String title;
  final String date;

  Explore({required this.imagePath, required this.title, required this.date});
}

getExplores() {
  return [
    Explore(
        imagePath: 'assets/explore1.png',
        title: "Roumor Has It: Lampard’s position under threat, ...",
        date: "04 JAN 2021, 14:16"),
    Explore(
        imagePath: 'assets/explore2.png',
        title: "Artrta sees ‘natural leader’ Tierney as a future, ...",
        date: "04 JAN 2021, 14:16"),
    Explore(
        imagePath: 'assets/explore1.png',
        title: "Artrta sees ‘natural leader’ Tierney as a future, ...",
        date: "04 JAN 2021, 14:16"),
    Explore(
        imagePath: 'assets/explore2.png',
        title: "Artrta sees ‘natural leader’ Tierney as a future, ...",
        date: "04 JAN 2021, 14:16"),
  ];
}

class ExploreScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Explore> explores = getExplores();
    return (AppLayout(
      showBottomNav: true,
      currentIndex: 1,
      child: Container(
        child: Column(
          children: [
            _ExploreInput(),
            Container(
              child: Expanded(
                  child: ListView.builder(
                      itemCount: explores.length,
                      itemBuilder: (itemBuilder, pos) {
                        return (_ExploreCard(
                          explore: explores[pos],
                        ));
                      })),
            ),
          ],
        ),
      ),
    ));
  }
}

Color hintText = Color(0xFF65656B);

class _ExploreInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return (Container(
      margin: EdgeInsets.only(
          bottom: getResponsiveHeight(context: context, height: 3)),
      child: TextField(
          decoration: InputDecoration(
              prefixIcon: Icon(Icons.search, color: hintText),
              hintText: "Search for news, team, match, etc...",
              hintStyle: TextStyle(color: hintText, fontSize: 18),
              filled: true,
              fillColor: Color(0xFF222232),
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: theme.primaryColor),
                  borderRadius: BorderRadius.circular(10)),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.transparent)))),
    ));
  }
}

class _ExploreCard extends StatelessWidget {
  final Explore explore;

  _ExploreCard({required this.explore});

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return (Container(
      margin: EdgeInsets.only(bottom: 32),
      child: InkWell(
        onTap: () {},
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                explore.imagePath,
                width: 70,
              ),
            ),
            Expanded(
                child: Container(
              margin: EdgeInsets.only(left: 20, right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    explore.title,
                    style: theme.textTheme.headline5,
                  ),
                  Text(explore.date, style: theme.textTheme.caption),
                ],
              ),
            )),
            IconButton(
                icon: Icon(Icons.bookmark_border_outlined, color: hintText),
                onPressed: () {
                  Navigator.of(context).pushNamed('/article');
                })
          ],
        ),
      ),
    ));
  }
}
