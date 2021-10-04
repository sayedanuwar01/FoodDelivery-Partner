import 'package:delivoopartners/Locale/locales.dart';
import 'package:flutter/material.dart';
import 'package:delivoopartners/Components/bottom_bar.dart';
import 'package:delivoopartners/Components/entry_field.dart';
import 'package:delivoopartners/Themes/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:delivoopartners/Routes/routes.dart';

class ProfilePage extends StatelessWidget {
  final String phoneNumber;

  ProfilePage({this.phoneNumber});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: Text(
          AppLocalizations.of(context).editProfile,
          style: Theme.of(context)
              .textTheme
              .headline4
              .copyWith(fontWeight: FontWeight.w500),
        ),
      ),

      //this column contains 3 textFields and a bottom bar
      body: RegisterForm(phoneNumber),
    );
  }
}

class RegisterForm extends StatefulWidget {
  final String phoneNumber;

  RegisterForm(this.phoneNumber);

  @override
  _RegisterFormState createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Divider(
                color: Theme.of(context).cardColor,
                thickness: 8.0,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0,vertical: 16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10.0),
                      child: Text(
                        AppLocalizations.of(context).featureImage.toUpperCase(),
                        style: Theme.of(context).textTheme.headline6.copyWith(
                            fontWeight: FontWeight.w500,
                            letterSpacing: 0.67,
                            color: kHintColor),
                      ),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          height: 99.0,
                          width: 99.0,
                          //color: Theme.of(context).cardColor,
                          child: Image.asset('images/profile.png'),
                        ),
                        SizedBox(width: 24.0),
                        Icon(
                          Icons.camera_alt,
                          color: kMainColor,
                          size: 19.0,
                        ),
                        SizedBox(width: 14.3),
                        Text(AppLocalizations.of(context).uploadPhoto,
                            style: Theme.of(context)
                                .textTheme
                                .caption
                                .copyWith(color: kMainColor)),
                      ],
                    ),
                  ],
                ),
              ),
              Divider(
                color: Theme.of(context).cardColor,
                thickness: 8.0,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 10.0,horizontal: 20.0),
                    child: Text(
                      AppLocalizations.of(context).profileInfo.toUpperCase(),
                      style: Theme.of(context).textTheme.headline6.copyWith(
                          fontWeight: FontWeight.w500,
                          letterSpacing: 0.67,
                          color: kHintColor),
                    ),
                  ),
                  //name textField
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12.0),
                    child: EntryField(
                      textCapitalization: TextCapitalization.words,
                      label: AppLocalizations.of(context).fullName.toUpperCase(),
                      initialValue: 'George Anderson',
                    ),
                  ),
                  //category textField
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12.0),
                    child: EntryField(
                      textCapitalization: TextCapitalization.words,
                      label: AppLocalizations.of(context).gender.toUpperCase(),
                      initialValue: 'MALE',
                      readOnly: true,
                      suffixIcon: Icon(Icons.keyboard_arrow_down),
                    ),
                  ),
                  //phone textField
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12.0),
                    child: EntryField(
                      label: AppLocalizations.of(context).mobileNumber.toUpperCase(),
                      initialValue: '+1 987 654 3210',
                      readOnly: true,
                    ),
                  ),
                  //email textField
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12.0),
                    child: EntryField(
                      textCapitalization: TextCapitalization.none,
                      label: AppLocalizations.of(context).emailAddress.toUpperCase(),
                      initialValue: 'deliveryman@email.com',
                      keyboardType: TextInputType.emailAddress,
                    ),
                  ),
                  SizedBox(height: 10.0,),
                ],
              ),
              Divider(
                color: Theme.of(context).cardColor,
                thickness: 8.0,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0,horizontal: 20.0),
                    child: Text(
                      AppLocalizations.of(context).documentation.toUpperCase(),
                      style: Theme.of(context).textTheme.headline6.copyWith(
                          fontWeight: FontWeight.w500,
                          letterSpacing: 0.67,
                          color: kHintColor),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: ListTile(
                      leading: Image.asset(
                        'images/icons/id1.png',
                        height: 16.0,
                        color: kMainColor,
                      ),
                      title: Text(
                        AppLocalizations.of(context).govtID.toUpperCase(),
                        style: Theme.of(context)
                            .textTheme
                            .headline5
                            .copyWith(
                            fontSize: 10.0, color: Color(0xff838383)),
                      ),
                      subtitle: Text(
                        'myvoterid.jpg',
                        style: Theme.of(context).textTheme.caption,
                      ),
                      trailing: Text(
                        AppLocalizations.of(context).upload.toUpperCase(),
                        style: Theme.of(context)
                            .textTheme
                            .headline6
                            .copyWith(
                            color: Color(0xff76d13a),
                            letterSpacing: 0.67,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: ListTile(
                      leading: Image.asset('images/icons/id2.png',
                          height: 16.0, color: Color(0xffb7b7b7)),
                      title: Text(
                        AppLocalizations.of(context).licence.toUpperCase(),
                        style: Theme.of(context)
                            .textTheme
                            .headline5
                            .copyWith(
                            fontSize: 10.0, color: Color(0xff838383)),
                      ),
                      subtitle: Text(
                        'Not Uploaded yet',
                        style: Theme.of(context)
                            .textTheme
                            .caption
                            .copyWith(color: Color(0xff8f8f8f)),
                      ),
                      trailing: Text(
                        AppLocalizations.of(context).upload.toUpperCase(),
                        style: Theme.of(context)
                            .textTheme
                            .headline6
                            .copyWith(
                            color: Color(0xff76d13a),
                            letterSpacing: 0.67,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                  Container(
                    height: 80.0,
                    color: Theme.of(context).cardColor,
                  ),
                ],
              ),
            ],
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: BottomBar(
              text: AppLocalizations.of(context).updateInfo,
              onTap: () {
                Navigator.popAndPushNamed(context, PageRoutes.accountPage);
              }),
        )
      ],
//          child: SingleChildScrollView(
//            child:
//          ),
    );
  }
}
