import 'package:delivoopartners/Account/UI/account_page.dart';
import 'package:delivoopartners/Locale/locales.dart';
import 'package:delivoopartners/Themes/colors.dart';
import 'package:flutter/material.dart';

class TncPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Account(),
      appBar: AppBar(
        titleSpacing: 0.0,
        title: Text(AppLocalizations.of(context).tnc,
            style: Theme.of(context).textTheme.bodyText1),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(48.0),
                color: Theme.of(context).cardColor,
                child: Image(
                  image:
                      AssetImage("images/logos/logo_delivery.png"), //delivoo logo
                  height: 130.0,
                  width: 99.7,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 28.0, horizontal: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      AppLocalizations.of(context).termsOfUse,
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                    Text(
                      AppLocalizations.of(context).aboutBody,
                      style: Theme.of(context).textTheme.caption,
                    ),
                    Text(
                      AppLocalizations.of(context).companyPolicy,
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                    Text(
                      AppLocalizations.of(context).aboutBody,
                      style: Theme.of(context).textTheme.caption,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
