import 'package:flutter/material.dart';
import 'package:openfoodfacts/model/NutrientLevels.dart';
import 'package:openfoodfacts/model/Nutriments.dart';
import 'package:smooth_app/cards/data_cards/nutrition_level_card.dart';
import 'package:smooth_ui_library/widgets/smooth_expandable_card.dart';

class NutritionLevelsExpandable extends StatelessWidget {
  const NutritionLevelsExpandable(
      {@required this.nutrientLevels, @required this.nutriments});

  final NutrientLevels nutrientLevels;
  final Nutriments nutriments;

  @override
  Widget build(BuildContext context) {
    return SmoothExpandableCard(
      collapsedHeader: Container(
        width: MediaQuery.of(context).size.width * 0.8,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            NutritionLevelCard(
              chip: true,
              level: nutrientLevels.levels[NutrientLevels.NUTRIENT_SUGARS],
              title: 'Sugars',
              icon: const Icon(
                Icons.check_box_outline_blank,
                color: Colors.white,
              ),
            ),
            NutritionLevelCard(
              chip: true,
              level: nutrientLevels.levels[NutrientLevels.NUTRIENT_SALT],
              title: 'Salt',
              icon: const Icon(
                Icons.strikethrough_s,
                color: Colors.white,
              ),
            ),
            NutritionLevelCard(
              chip: true,
              level: nutrientLevels.levels[NutrientLevels.NUTRIENT_FAT],
              title: 'Fat',
              icon: const Icon(
                Icons.fastfood,
                color: Colors.white,
              ),
            ),
            NutritionLevelCard(
              chip: true,
              level:
                  nutrientLevels.levels[NutrientLevels.NUTRIENT_SATURATED_FAT],
              title: 'Saturated-fat',
              icon: const Icon(
                Icons.fastfood,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
      content: Container(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                NutritionLevelCard(
                  title: 'Sugars',
                  level: nutrientLevels.levels[NutrientLevels.NUTRIENT_SUGARS],
                  subtitle: nutriments.sugars != null
                      ? '${nutriments.sugars.toStringAsFixed(1)} for 100g'
                      : '',
                ),
                NutritionLevelCard(
                  title: 'Salt',
                  level: nutrientLevels.levels[NutrientLevels.NUTRIENT_SALT],
                  subtitle: nutriments.salt != null
                      ? '${nutriments.salt.toStringAsFixed(1)} for 100g'
                      : '',
                ),
              ],
            ),
            const SizedBox(
              height: 14.0,
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                NutritionLevelCard(
                  title: 'Fat',
                  level: nutrientLevels.levels[NutrientLevels.NUTRIENT_FAT],
                  subtitle: nutriments.fat != null
                      ? '${nutriments.fat.toStringAsFixed(1)} for 100g'
                      : '',
                ),
                NutritionLevelCard(
                  title: 'Saturated fat',
                  level: nutrientLevels
                      .levels[NutrientLevels.NUTRIENT_SATURATED_FAT],
                  subtitle: nutriments.saturatedFat != null
                      ? '${nutriments.saturatedFat.toStringAsFixed(1)} for 100g'
                      : '',
                ),
              ],
            ),
            const SizedBox(
              height: 14.0,
            ),
          ],
        ),
      ),
      expandedHeader: Text(
        'Nutrition levels',
        style: Theme.of(context).textTheme.headline3,
      ),
    );
  }
}
