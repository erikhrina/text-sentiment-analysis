import 'package:flutter/material.dart';
import 'package:sentiment_analysis/api/predictions_api.dart';
import 'package:sentiment_analysis/models/prediction_model.dart';
import 'package:sentiment_analysis/pages/results/results.dart';
import 'package:sentiment_analysis/services/toast_service.dart';
import 'package:sentiment_analysis/widgets/button.dart';
import 'package:sentiment_analysis/widgets/text_field.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController? textController;
  late PredictionsApi _predictionsApi;

  @override
  void initState() {
    textController = TextEditingController();
    _predictionsApi = PredictionsApi();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Align(
            alignment: Alignment.center,
            child: Column(
              spacing: 8.0,
              children: [
                const Text(
                  'Enter text for sentiment analysis',
                  style: TextStyle(
                    fontSize: 18.0,
                    decoration: TextDecoration.underline,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24.0),
                  child: DefaultTextField(
                    textController: textController!,
                  ),
                ),
                DefaultButton(
                  onPressed: () async {
                    final String? userText = textController?.text;
                    if (userText == null || userText.isEmpty) {
                      ToastService.showSnackbar(
                        context,
                        message: 'Please input your text first!',
                      );
                    } else {
                      SentimentPrediction? prediction =
                          await _predictionsApi.getPrediction(userText);
                      if (!context.mounted) return;
                      if (prediction == null) {
                        ToastService.showSnackbar(
                          context,
                          message: 'There was an error obtaining predictions.',
                        );
                      } else {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ResultsPage(
                              prediction: prediction,
                            ),
                          ),
                        );
                      }
                    }
                  },
                  buttonText: 'Send',
                ),
              ],
            ),
          ),
          // Column(
          //   children: [
          //     Padding(
          //       padding: const EdgeInsets.symmetric(
          //         vertical: 24.0,
          //       ),
          //       child: OrWidget(),
          //     ),
          //     SizedBox(
          //       width: 56,
          //       height: 56,
          //       child: Image.asset(
          //         'assets/images/twitter-logo.png',
          //         fit: BoxFit.fitWidth,
          //       ),
          //     ),
          //   ],
          // ),
        ],
      ),
    );
  }
}

class OrWidget extends StatelessWidget {
  const OrWidget({super.key});

  final double lineWidth = 120.0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Left Line
          Container(
            width: lineWidth,
            height: 1.0,
            color: Colors.black,
          ),
          SizedBox(width: 8.0),
          // "or" Text
          Text(
            'or',
            style: TextStyle(
              fontSize: 16.0,
              color: Colors.black,
            ),
          ),
          SizedBox(width: 8.0),
          // Right Line
          Container(
            width: lineWidth,
            height: 1.0,
            color: Colors.black,
          ),
        ],
      ),
    );
  }
}
