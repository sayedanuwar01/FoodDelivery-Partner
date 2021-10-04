import 'package:delivoopartners/Account/UI/ListItems/settings_page.dart';
import 'package:delivoopartners/Auth/login_navigator.dart';
import 'package:delivoopartners/Account/UI/ListItems/support_page.dart';
import 'package:delivoopartners/Account/UI/account_page.dart';
import 'package:delivoopartners/Chat/UI/chat_page.dart';
import 'package:delivoopartners/Account/UI/ListItems/about_us_page.dart';
import 'package:delivoopartners/Account/UI/ListItems/tnc_page.dart';
import 'package:delivoopartners/OrderMap/UI/accepted.dart';
import 'package:delivoopartners/OrderMap/UI/new_delivery.dart';
import 'package:delivoopartners/OrderMap/UI/onway.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:delivoopartners/OrderMap/UI/delivery_successful.dart';
import 'package:delivoopartners/Account/UI/ListItems/wallet_page.dart';
import 'package:delivoopartners/Account/UI/ListItems/addtobank_page.dart';
import 'package:delivoopartners/Account/UI/ListItems/insight_page.dart';
import 'package:delivoopartners/DeliveryPartnerProfile/delivery_profile.dart';

class PageRoutes {
  static const String accountPage = 'account_page';
  static const String tncPage = 'tnc_page';
  static const String aboutUsPage = 'about_us_page';
  static const String supportPage = 'support_page';
  static const String loginNavigator = 'login_navigator';
  static const String chatPage = 'chat_page';
  static const String deliverySuccessful = 'delivery_successful';
  static const String insightPage = 'insight_page';
  static const String walletPage = 'wallet_page';
  static const String addToBank = 'addtobank_page';
  static const String editProfile = 'store_profile';
  static const String newDeliveryPage = 'new_delivery_page';
  static const String acceptedPage = 'accepted_page';
  static const String onWayPage = 'on_way_page';
  static const String setting = 'settings_page';

  Map<String, WidgetBuilder> routes() {
    return {
      accountPage: (context) => AccountPage(),
      tncPage: (context) => TncPage(),
      aboutUsPage: (context) => AboutUsPage(),
      supportPage: (context) => SupportPage(),
      loginNavigator: (context) => LoginNavigator(),
      chatPage: (context) => ChatPage(),
      deliverySuccessful: (context) => DeliverySuccessful(),
      insightPage: (context) => InsightPage(),
      walletPage: (context) => WalletPage(),
      addToBank: (context) => AddToBank(),
      editProfile: (context) => ProfilePage(),
      newDeliveryPage: (context) => NewDeliveryPage(),
      acceptedPage: (context) => AcceptedPage(),
      onWayPage: (context) => OnWayPage(),
      setting: (context) => Settings(),
    };
  }
}
