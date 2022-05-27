import 'package:flutter/material.dart';
import 'package:flutter_localization/l10n/app_localizations.dart';

class MyBody extends StatefulWidget {
  MyBody({Key? key}) : super(key: key);

  @override
  State<MyBody> createState() => _MyBodyState();
}

class _MyBodyState extends State<MyBody> {
  List<Map<String, dynamic>> list = [];

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    list = [
      {"carpet": AppLocalizations.of(context)!.carpet},
      {"decks_porches": AppLocalizations.of(context)!.decks_porches},
      {
        "electrical_computers":
            AppLocalizations.of(context)!.electrical_computers
      },
      {"kitchens": AppLocalizations.of(context)!.kitchens},
      {"tile_stone": AppLocalizations.of(context)!.tile_stone},
      {"plumbing": AppLocalizations.of(context)!.plumbing},
      {"carpentry": AppLocalizations.of(context)!.carpentry},
    ];
  }

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: Text(AppLocalizations.of(context)!.services),
      children: List.generate(
        list.length,
        (index) => Container(
          margin: const EdgeInsets.only(
            left: 15,
            right: 30,
            top: 5,
            bottom: 5,
          ),
          height: MediaQuery.of(context).size.height * 0.05,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(
              color: Colors.black38,
              width: 0.5,
            ),
          ),
          child: Center(
            child: Text(list.elementAt(index).values.first),
          ),
        ),
      ),
    );
  }
}
