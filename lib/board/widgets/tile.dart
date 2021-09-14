import 'package:flutter/material.dart';
import 'package:numbers/board/models/tile_model.dart';

import '../board_consts.dart';

class Tile extends StatelessWidget {
  const Tile({
    required this.tile,
  });

  final TileModel tile;

  @override
  Widget build(BuildContext context) {
    return Container(
      key: tile.key,
      height: 50,
      width: 50,
      margin: EdgeInsets.all(5),
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        child: GestureDetector(
          behavior: HitTestBehavior.translucent,
          child: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: tile.hasHit
                      ? Colors.black
                      : tile.burned
                          ? Colors.black
                          : BoardConsts.tileColors.elementAt(tile.number - 1),
                  borderRadius: BorderRadius.circular(45),
                  border: Border.all(
                    color: Colors.black,
                    width: 3,
                  ),
                ),
                child: Center(
                  child: Text(
                    '${tile.disposed ? '' : tile.number}',
                    style: Theme.of(context).textTheme.bodyText2?.copyWith(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: tile.hasHit ? Colors.white : Colors.black),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10.0, top: 5),
                child: PhysicalModel(
                    shadowColor: Colors.black,
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(45),
                    elevation: 2,
                    child: SizedBox.expand()),
              ),
            ],
          ),
        ),
      ),
    );
  }
}