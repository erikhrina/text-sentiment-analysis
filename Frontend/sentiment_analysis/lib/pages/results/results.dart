import 'package:flutter/material.dart';
import 'package:sentiment_analysis/models/prediction_model.dart';
import 'package:sentiment_analysis/services/predictions_service.dart';
import 'package:sentiment_analysis/widgets/pie_chart.dart';

class ResultsPage extends StatefulWidget {
  const ResultsPage({
    super.key,
    required this.prediction,
  });

  final SentimentPrediction prediction;

  @override
  State<ResultsPage> createState() => _ResultsPageState();
}

class _ResultsPageState extends State<ResultsPage> {
  late final SentimentPrediction prediction;

  @override
  void initState() {
    prediction = widget.prediction;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: const EdgeInsets.all(24.0),
                child: Text(
                  '"${prediction.userText}"',
                  style: TextStyle(
                    fontSize: 16.0,
                  ),
                ),
              ),
            ),
            Column(
              children: [
                Align(
                  child: Text(
                    PredictionsService.mapPrediction(
                      prediction.prediction,
                    ),
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w900,
                      fontSize: 50,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 35.0,
                  ),
                  child: SizedBox(
                    child: SentimentPieChart(
                      positiveDecimal:
                          prediction.probabilities['positive'] ?? 0.33,
                      neutralDecimal:
                          prediction.probabilities['neutral'] ?? 0.33,
                      negativeDecimal:
                          prediction.probabilities['negative'] ?? 0.33,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
