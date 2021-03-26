import 'package:flutter/material.dart';
import 'package:sport_app/layout.dart';
import 'package:sport_app/utils/responsive.dart';

class ArticleHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return (Padding(
      padding: EdgeInsets.all(5),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        IconButton(
            icon: Icon(Icons.chevron_left, color: Colors.white),
            onPressed: () {
              Navigator.of(context).pop();
            }),
        IconButton(
            icon: Icon(
              Icons.share_outlined,
              color: Colors.white,
            ),
            onPressed: () {})
      ]),
    ));
  }
}

class ArticleImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return (Row(
      children: [
        Expanded(
            child: Stack(
          children: [
            Container(
              width: double.infinity,
              child: ClipRRect(
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(40),
                      bottomLeft: Radius.circular(40)),
                  child: Image.asset(
                    'assets/explore.png',
                    fit: BoxFit.cover,
                    height: getResponsiveHeight(context: context, height: 40),
                  )),
            ),
            ArticleHeader()
          ],
        ))
      ],
    ));
  }
}

class ArticleContent extends StatelessWidget {
  final Widget child;
  ArticleContent({required this.child});

  @override
  Widget build(BuildContext context) {
    return (Padding(
        padding: EdgeInsets.only(left: 20, right: 20, top: 20), child: child));
  }
}

class ArticleTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return (Container(
      padding: EdgeInsets.only(top: 10, bottom: 20),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          "Arsenal vs Aston Villa prediction",
          style: theme.textTheme.headline4,
        ),
      ),
    ));
  }
}

class ArticleText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return (Padding(
        padding: EdgeInsets.only(bottom: 20),
        child: Text(
          "League wins. The match is scheduled for Sunday at the Emirates. The Gunners put forth a real statement of intent after their 1-0 win against Manchester United. Mikel Arteta's side had already surrendered points to Liverpool, Manchester City and Juventus.",
          style: theme.textTheme.bodyText2,
        )));
  }
}

class ArticleBio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Container(
      padding: EdgeInsets.only(bottom: 30, top: 10),
      child: (Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CircleAvatar(
                backgroundImage: AssetImage("assets/avatar.png"),
                radius: 25.0,
              ),
              Padding(
                padding: EdgeInsets.only(left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Brian Immanuel",
                      style: theme.textTheme.subtitle2,
                    ),
                    Text(
                      "March 26, 2021",
                      style: theme.textTheme.caption,
                    )
                  ],
                ),
              ),
            ],
          ),
          Row(
            children: [
              IconButton(
                  icon: Icon(
                    Icons.favorite_outline,
                    color: Colors.white,
                  ),
                  onPressed: () {}),
              IconButton(
                  icon: Icon(
                    Icons.contactless,
                    color: Colors.white,
                  ),
                  onPressed: () {})
            ],
          )
        ],
      )),
    );
  }
}

class ArticleDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return (AppLayout(
        useMargin: false,
        child: SingleChildScrollView(
          child: Column(
            children: [
              ArticleImage(),
              ArticleContent(
                child: Column(
                  children: [
                    ArticleTitle(),
                    ArticleBio(),
                    ArticleText(),
                    ArticleText(),
                    ArticleText(),
                    ArticleText()
                  ],
                ),
              ),
            ],
          ),
        )));
  }
}
