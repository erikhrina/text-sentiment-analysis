import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';
import 'package:sentiment_analysis/constants/constants.dart';

class SentimentPieChart extends StatelessWidget {
  const SentimentPieChart({
    super.key,
    required this.positiveDecimal,
    required this.neutralDecimal,
    required this.negativeDecimal,
  });

  final double positiveDecimal;
  final double neutralDecimal;
  final double negativeDecimal;

  @override
  Widget build(BuildContext context) {
    return PieChart(
      dataMap: {
        'Positive': positiveDecimal * 10,
        'Neutral': neutralDecimal * 10,
        'Negative': negativeDecimal * 10,
      },
      animationDuration: Duration.zero,
      colorList: <Color>[
        positiveColor,
        neutralColor,
        negativeColor,
      ],
      legendOptions: LegendOptions(
        showLegends: true,
        legendPosition: LegendPosition.bottom,
        showLegendsInRow: true,
      ),
      chartValuesOptions: ChartValuesOptions(
        showChartValueBackground: false,
        showChartValues: true,
        showChartValuesInPercentage: true,
        showChartValuesOutside: false,
        decimalPlaces: 2,
        chartValueStyle: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
