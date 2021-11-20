import 'package:flutter/material.dart';
import 'package:flutter_application_1/tile_state.dart';

class BoardTile extends StatelessWidget {
  final TileState tileState;
  final double dimension;
  final VoidCallback onPressed;
  BoardTile(
      {required Key? key,
      required this.tileState,
      required this.dimension,
      required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: dimension,
      height: dimension,
      child: FlatButton(
        onPressed: onPressed,
        child: _widgetForTileState(),
      ),
    );
  }

  Widget _widgetForTileState() {
    Widget widget;

    switch (tileState) {
      case TileState.EMPTY:
        {
          widget = Container();
          break;
        }
      case TileState.CIRCLE:
        {
          widget = Image.asset('Assets/o.png');
          break;
        }
      case TileState.CROSS:
        {
          widget = Image.asset('Assets/x.png');
          break;
        }
      case TileState.FULLBOX:
        {
          widget = Image.asset('Assets/draw.png');
        }
    }
    return widget;
  }
}