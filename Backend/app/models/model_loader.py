import dill
import os

def load_pipeline():
    """Loads the serialized Pipeline"""
    model_path = '..\\..\\..\\ModelDevelopment\\Final_model\\pipeline.pkl'
    with open(model_path, 'rb') as file:
        pipeline = dill.load(file)
    return pipeline