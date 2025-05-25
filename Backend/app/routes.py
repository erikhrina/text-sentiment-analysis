from flask import Blueprint, request, jsonify, current_app

prediction_blueprint = Blueprint('prediction', __name__)

@prediction_blueprint.route('/predict', methods=['POST'])
def predict():
    """
    Endpoint for making predictions.
    Expects JSON input with feature values.
    """
    try:
        # Access the pipeline from app config
        pipeline = current_app.config['PIPELINE']

        # Get the input data
        input_data = request.get_json()
        text = input_data['text']

        # Make prediction
        prediction = pipeline.predict([text])[0]

        # Save probabilities
        prediction_proba = pipeline.predict_proba([text])[0]

        # Return the prediction
        return jsonify({
            'prediction': float(prediction),
            'probabilities': [float(p) for p in prediction_proba],
        })
    except Exception as e:
        return jsonify({'error': str(e)}), 400