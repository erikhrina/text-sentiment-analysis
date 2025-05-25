# Sentiment Analysis App

This project was a team effort to develop a sentiment analysis application with a **Flutter** frontend and a **Flask** backend. The app predicts the sentiment of user-provided text as **negative (0)**, **neutral (1)**, or **positive (2)**. 

---

## Team Contributions

- **Filip Šarík, Razvan Nica**:  
  Responsible for **model selection, testing, training, feature engineering, hyperparameter tuning, and model deployment**.
  
- **Erik Hriňa (230395)** *(my contributions)*:
  - **Frontend development**: Built the app’s user interface and functionality using Flutter.  
  - **Backend development**: Created the API in Flask for processing requests and making predictions.  
  - **App design and testing**: Designed the app’s structure and tested its usability and functionality.

---

## Project Structure

- **Backend/**: Flask backend for handling API requests and making predictions.
- **Frontend/**: Flutter mobile application that interacts with the backend.
- **Documentation/**: Includes a detailed report and a video demo of the app.
- **ModelDevelopment/**: Jupyter notebooks used for creating and training the machine learning models.

---

## Backend (Flask)

### Installation

1. Clone the repository:
   ```
   bash
   git clone https://github.com/erikhrina/text-sentiment-analysis.git
   cd Backend
   ```

2. Install dependencies:
   ```
   pip install -r requirements.txt
   ```

3. Run the Flask app:
   ```
   python run.py
   ```

---

## Frontend (Flutter)

### Installation

1. Clone the repository:
   ```
   git clone https://github.com/erikhrina/text-sentiment-analysis.git
   cd Frontend/sentiment-analysis
   ```

2. Install Flutter dependencies:
   ```
   flutter pub get
   ```

3. Run the Flutter app:
   ```
   flutter run
   ```