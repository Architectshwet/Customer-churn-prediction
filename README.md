# Customer-churn-prediction
A project about building a stacked model with tuning the hyperparameters with grid search and hyperopt and used PySpark to test the performance of model in Spark Clusters in AWS EC2


•Designed a Stacked Model combining RandomForest, ExtraTree, Adaboost, GradientBoost as a base layer models (K-fold grid search Cross validation to hypertune the parameters) and  xgboost as a top layer model (hyperopt to hypertune the parameters).

•Used PySpark to test the performance of model in Spark Clusters in AWS EC2

•Applied ROSE package to balance the target variable and used pandas for data cleaning and feature engineering
