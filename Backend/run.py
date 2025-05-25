from app import create_app
from nltk.stem.porter import PorterStemmer
from nltk.corpus import stopwords
import pandas as pd
import numpy as np
import xgboost
import emoji
import nltk
import re

app = create_app()

if __name__ == '__main__':
    app.run(debug=True)