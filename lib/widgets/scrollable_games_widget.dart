import 'package:flutter/material.dart';
import 'package:gamify_app/data.dart';

class ScrollableGamesWidget extends StatelessWidget {
  // const ScrollableGamesWidget({super.key});

  final double _height;
  final double _width;
  final bool _showTitle;
  final List<Game> _gamesData;

  ScrollableGamesWidget(this._height,this._width,this._showTitle,this._gamesData);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: _height,
      width: _width,
      child: ListView(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        children: _gamesData.map((_games) {
            return Container(
              height: _height,
              width: _width * 0.30,
              padding: EdgeInsets.only(right: _width * 0.03),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: _height * 0.8,
                    width: _width * 0.45,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(_games.coverImage.url))
                    ),

                  ),
                  Text(
                    _games.title,
                    maxLines: 1,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: _height * 0.08,
                    ),
                  )
                ],
              ),
            );
        }).toList()
      ),
    );
  }
}