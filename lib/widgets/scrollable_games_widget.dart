import 'package:flutter/material.dart';
import 'package:gamify_app/data.dart';

class ScrollableGamesWidget extends StatelessWidget {
  const ScrollableGamesWidget({super.key});

  final double _height;
  final double _width;
  final bool showTitle;
  final List<Game> _gamesData;

  const ScrollableGamesWidget(this._height,this._width,this.showTitle,this._gamesData);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: _height,
      width: _width,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: _gamesData.map((_games) {
            return Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: _height * 0.8,
                    width: _width * 0.3,
                    decoration: BoxDecoration(
                      image: DecorationImage(image: NetworkImage(_games.coverImage.url))
                    ),
                  ),
                  Text("yoo")
                ],
              ),
            );
        }).toList()
      ),
    );
  }
}