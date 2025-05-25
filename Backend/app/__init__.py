from flask import Flask
from nltk.stem.porter import PorterStemmer
from app.models.model_loader import load_pipeline
from app.routes import prediction_blueprint

def create_app():
    app = Flask(__name__)

    # Load ML pipeline
    app.config['PIPELINE'] = load_pipeline()

    # Register routes
    app.register_blueprint(prediction_blueprint)

    return app