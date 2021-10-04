import 'package:delivoopartners/Account/UI/account_page.dart';
import 'package:delivoopartners/Locale/locales.dart';
import 'package:delivoopartners/Themes/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:delivoopartners/Routes/routes.dart';

class InsightPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Account(),
      appBar: AppBar(
        title: Text(AppLocalizations.of(context).insight,
            style: Theme.of(context)
                .textTheme
                .headline4
                .copyWith(fontWeight: FontWeight.w500)),
        titleSpacing: 0.0,
        actions: <Widget>[
          Row(
            children: <Widget>[
              Text(
                AppLocalizations.of(context).today.toUpperCase(),
                style: Theme.of(context).textTheme.headline4.copyWith(
                    fontSize: 15.0, letterSpacing: 1.5, color: kMainColor),
              ),
              IconButton(
                icon: Icon(Icons.arrow_drop_down),
                color: kMainColor,
                onPressed: () {
                  /*....*/
                },
              )
            ],
          )
        ],
      ),
      body: Insight(),
    );
  }
}

class Insight extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Divider(
          color: Theme.of(context).cardColor,
          thickness: 8.0,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10.0),
          child: Row(
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(bottom: 8.0),
                    child: Text(
                      '64',
                      style: Theme.of(context).textTheme.headline4,
                    ),
                  ),
                  Text(
                    AppLocalizations.of(context).orders,
                    style: Theme.of(context).textTheme.headline6.copyWith(
                        fontWeight: FontWeight.w500, color: Color(0xff6a6c74)),
                  ),
                ],
              ),
              Spacer(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(bottom: 8.0),
                    child: Text(
                      '68 km',
                      style: Theme.of(context).textTheme.headline4,
                    ),
                  ),
                  Text(
                    AppLocalizations.of(context).ride,
                    style: Theme.of(context).textTheme.headline6.copyWith(
                        fontWeight: FontWeight.w500, color: Color(0xff6a6c74)),
                  ),
                ],
              ),
              Spacer(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(bottom: 8.0),
                    child: Text(
                      '\$302.50',
                      style: Theme.of(context).textTheme.headline4,
                    ),
                  ),
                  Text(
                    AppLocalizations.of(context).earnings,
                    style: Theme.of(context).textTheme.headline6.copyWith(
                        fontWeight: FontWeight.w500, color: Color(0xff6a6c74)),
                  ),
                ],
              ),
            ],
          ),
        ),
        Divider(
          color: Theme.of(context).cardColor,
          thickness: 6.7,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(AppLocalizations.of(context).earnings.toUpperCase(),
                  style: Theme.of(context)
                      .textTheme
                      .headline4
                      .copyWith(fontSize: 15.0, letterSpacing: 1.5)),
              Center(
                child: Image(
                  image: AssetImage("images/graph.png"),
                  height: 200.0,
                ),
              ),
              GestureDetector(
                onTap: () =>
                    Navigator.pushNamed(context, PageRoutes.walletPage),
                child: Center(
                  child: Text(
                    AppLocalizations.of(context).viewAll.toUpperCase(),
                    style: Theme.of(context).textTheme.caption.copyWith(
                        color: kMainColor,
                        letterSpacing: 1.33,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
        ),
        Divider(
          color: Theme.of(context).cardColor,
          thickness: 6.7,
        ),
        Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(AppLocalizations.of(context).orders.toUpperCase(),
                  style: Theme.of(context)
                      .textTheme
                      .headline4
                      .copyWith(fontSize: 15.0, letterSpacing: 1.5)),
              Center(
                child: Image(
                  image: AssetImage("images/graph1.png"),
                  height: 200.0,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
