import 'package:flutter/material.dart';
import 'package:flutter_localization/Providers/lang_control_provider.dart';
import 'package:provider/provider.dart';

import 'body.dart';
import 'l10n/app_localizations.dart';

class MyHomeScreen extends StatefulWidget {
  const MyHomeScreen({Key? key}) : super(key: key);

  @override
  State<MyHomeScreen> createState() => _MyHomeScreenState();
}

class _MyHomeScreenState extends State<MyHomeScreen> {
  @override
  Widget build(BuildContext context) {
    LangController controler = context.read<LangController>();
    return Scaffold(
      drawer: Drawer(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(35),
            topRight: Radius.circular(35),
          ),
        ),
        elevation: 0.0,
        backgroundColor: Colors.white,
        child: Column(
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(35),
              ),
              child: Image.network(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQt7b912PMBVK3Asl5mixsPjNhlNjXssFXwxg&usqp=CAU',
                height: MediaQuery.of(context).size.height * 0.2,
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.fitWidth,
              ),
            ),
            Expanded(
              child: Container(
                margin: const EdgeInsets.only(
                  left: 20,
                  top: 10,
                  right: 20,
                  bottom: 8,
                ),
                width: MediaQuery.of(context).size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(AppLocalizations.of(context)!.home),
                    Text(AppLocalizations.of(context)!.carpet),
                    Text(AppLocalizations.of(context)!.decks_porches),
                    Text(AppLocalizations.of(context)!.electrical_computers),
                    Text(AppLocalizations.of(context)!.kitchens),
                    Text(AppLocalizations.of(context)!.tile_stone),
                    Text(AppLocalizations.of(context)!.plumbing),
                    Text(AppLocalizations.of(context)!.carpentry),
                    Row(
                      children: [
                        Text(AppLocalizations.of(context)!.select_language),
                        const Spacer(),
                        OutlinedButton(
                          onPressed: () async {
                            await showDialog(
                                context: context,
                                builder: (context) {
                                  return SimpleDialog(
                                    title: Text(AppLocalizations.of(context)!
                                        .select_language),
                                    children: [
                                      SimpleDialogOption(
                                        onPressed: () {
                                          controler.onLangChange(0);
                                        },
                                        child: const Text('English'),
                                      ),
                                      SimpleDialogOption(
                                        onPressed: () {
                                          controler.onLangChange(2);
                                        },
                                        child: const Text('Hindi'),
                                      ),
                                      SimpleDialogOption(
                                        onPressed: () {
                                          controler.onLangChange(1);
                                        },
                                        child: const Text('Gujarati'),
                                      ),
                                    ],
                                  );
                                });
                          },
                          child: const Text('lang'),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: Colors.black,
        title: const Text('MyAppTitle'),
      ),
      body: MyBody(),
    );
  }
}
