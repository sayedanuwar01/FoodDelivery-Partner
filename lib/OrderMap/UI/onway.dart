import 'package:delivoopartners/Account/UI/account_page.dart';
import 'package:delivoopartners/Components/bottom_bar.dart';
import 'package:delivoopartners/Locale/locales.dart';
import 'package:delivoopartners/Themes/colors.dart';
import 'package:delivoopartners/Themes/style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:delivoopartners/Routes/routes.dart';
import 'package:delivoopartners/OrderMap/UI/slide_up_panel.dart';

class OnWayPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return OnWayBody();
  }
}

class OnWayBody extends StatefulWidget {
  @override
  _OnWayBodyState createState() => _OnWayBodyState();
}

class _OnWayBodyState extends State<OnWayBody> {
  @override
  void initState() {
    super.initState();
  }

  List<String> itemName = [
    'Fresh Red Onions',
    'Fresh Cauliflower',
    'Fresh Cauliflower',
  ];

  bool isOpen = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Account(),
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(80.0),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 12.0),
            child: AppBar(
              title: Text(AppLocalizations.of(context).newDeliveryTask,
                  style: Theme.of(context)
                      .textTheme
                      .headline4
                      .copyWith(fontWeight: FontWeight.w500)),
              actions: <Widget>[
                Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: 8.0, horizontal: 20.0),
                  child: FlatButton.icon(
                    icon: Icon(
                      isOpen ? Icons.close : Icons.shopping_basket,
                      color: kMainColor,
                      size: 13.0,
                    ),
                    label: Text(isOpen ? AppLocalizations.of(context).close : AppLocalizations.of(context).orderInfo,
                        style: Theme.of(context).textTheme.caption.copyWith(
                              fontSize: 11.7,
                              fontWeight: FontWeight.bold,
                            )),
                    onPressed: () {
                      setState(() {
                        if (isOpen)
                          isOpen = false;
                        else
                          isOpen = true;
                      });
                    },
                  ),
                )
              ],
            ),
          ),
        ),
        body: Stack(
          children: <Widget>[
            Column(
              children: <Widget>[
                Expanded(
                  child: Image.asset(
                    'images/map1.png',
                    fit: BoxFit.fitWidth,
                    width: MediaQuery.of(context).size.width,
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16.3),
                        child: Row(
                          children: <Widget>[
                            Image.asset(
                              'images/vegetables_fruitsact.png',
                              height: 42.3,
                              width: 33.7,
                            ),
                            Expanded(
                              child: ListTile(
                                title: Text(
                                  AppLocalizations.of(context).vegetable,
                                  style: Theme.of(context).textTheme.caption.copyWith(
                                      letterSpacing: 0.07,fontWeight: FontWeight.bold),
                                ),
                                subtitle: Row(
                                  children: <Widget>[
                                    Text(
                                      '16.5 km ',
                                      style: Theme.of(context)
                                          .textTheme
                                          .headline6
                                          .copyWith(
                                              fontSize: 11.7,
                                              letterSpacing: 0.06,
                                              color: kMainColor,
                                              fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      '(20 min)',
                                      style: Theme.of(context)
                                          .textTheme
                                          .headline6
                                          .copyWith(
                                              fontSize: 11.7,
                                              letterSpacing: 0.06,
                                              color: Color(0xffc1c1c1)),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            FlatButton(
                              onPressed: () {/*....*/},
                              child: Row(
                                children: <Widget>[
                                  Icon(
                                    Icons.navigation,
                                    color: kMainColor,
                                    size: 14.0,
                                  ),
                                  SizedBox(
                                    width: 8.0,
                                  ),
                                  Text(
                                    AppLocalizations.of(context).direction,
                                    style: Theme.of(context)
                                        .textTheme
                                        .caption
                                        .copyWith(
                                            color: kMainColor,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 11.7,
                                            letterSpacing: 0.06),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Divider(
                        color: kCardBackgroundColor,
                        thickness: 1.0,
                      ),
                      Row(
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(
                                left: 28.0, bottom: 6.0, top: 6.0, right: 10.0),
                            child: Icon(
                              Icons.location_on,
                              size: 14.0,
                              color: kMainColor,
                            )
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                AppLocalizations.of(context).store,
                                style: Theme.of(context).textTheme.caption.copyWith(
                                    letterSpacing: 0.05,fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 5.0,
                              ),
                              Text(
                                '1024, Hemiltone Street, Union Market, USA',
                                style: Theme.of(context)
                                    .textTheme
                                    .caption
                                    .copyWith(
                                        fontSize: 11.0, letterSpacing: 0.05),
                              ),
                            ],
                          ),
                          Spacer(),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 4.0),
                            child: FittedBox(
                              fit: BoxFit.fill,
                              child: Row(
                                children: <Widget>[
                                  IconButton(
                                    icon: Icon(
                                      Icons.message,
                                      color: kMainColor,
                                      size: 14.0,
                                    ),
                                    onPressed: () {
                                      Navigator.pushNamed(
                                          context, PageRoutes.chatPage);
                                    },
                                  ),
                                  IconButton(
                                    icon: Icon(
                                      Icons.phone,
                                      color: kMainColor,
                                      size: 14.0,
                                    ),
                                    onPressed: () {
                                      /*..........*/
                                    },
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Row(
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(
                                left: 28.0,
                                bottom: 12.0,
                                top: 12.0,
                                right: 10.0),
                            child: Icon(
                              Icons.navigation,
                              size: 14.0,
                              color: kMainColor,
                            )
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'Sam Smith',
                                style: Theme.of(context).textTheme.caption.copyWith(
                                    letterSpacing: 0.05,fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 5.0,
                              ),
                              Text(
                                '1024, Hemiltone Street, Union Market, USA',
                                style: Theme.of(context)
                                    .textTheme
                                    .caption
                                    .copyWith(
                                        fontSize: 11.0, letterSpacing: 0.05),
                              ),
                            ],
                          ),
                          Spacer(),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 4.0),
                            child: FittedBox(
                              fit: BoxFit.fill,
                              child: Row(
                                children: <Widget>[
                                  IconButton(
                                    icon: Icon(
                                      Icons.message,
                                      color: kMainColor,
                                      size: 14.0,
                                    ),
                                    onPressed: () {
                                      Navigator.pushNamed(
                                          context, PageRoutes.chatPage);
                                    },
                                  ),
                                  IconButton(
                                    icon: Icon(
                                      Icons.phone,
                                      color: kMainColor,
                                      size: 14.0,
                                    ),
                                    onPressed: () {
                                      /*...........*/
                                    },
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10.0,),
                      BottomBar(
                          text: AppLocalizations.of(context).markDelivered,
                          onTap: () => Navigator.popAndPushNamed(
                              context, PageRoutes.deliverySuccessful)),
                    ],
                  ),
                )
              ],
            ),
            isOpen ? OrderInfoContainer(itemName) : SizedBox.shrink(),
          ],
        ));
  }
}
