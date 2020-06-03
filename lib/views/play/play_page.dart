import 'package:flutter/material.dart';
import 'package:heroes_client/models/play_model.dart' as PlayModel;
import 'package:heroes_client/widgets/empty_widget.dart';

class PlayPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _PlayState();
  }
}

class _PlayState extends State<PlayPage> {
  List<PlayModel.Hero> _heroes;
  bool _isDispose = false;

  @override
  void initState() {
    super.initState();
    PlayModel.fetchHeroes().then((value) {
      if (!_isDispose)
        setState(() {
          _heroes = value;
        });
    });
  }

  @override
  Widget build(BuildContext context) {
    return _heroes == null
        ? LoadingWidget()
        : _heroes.length == 0
            ? EmptyWidget('>_<!')
            : Column(
                children: [
                  for (PlayModel.Hero hero in _heroes)
                    Text(
                      "${hero.name} is so ${hero.desc}.",
                      style: TextStyle(color: Colors.black54),
                    ),
                ],
              );
  }

  @override
  void dispose() {
    super.dispose();
    _isDispose = true;
  }
}
