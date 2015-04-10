# kaggle-poker_rule
repository for poker rule induction in kaggle

## First Try
* Result: 0.67575
* Submission data: Sat, 21 Mar 2015 04:58:34
* Feature Extraction: Make 5 dimensional multinomial data to 52 dimensional binary data and apply PCA
* Learning Algorithm: KNN using cosine similarity
* Comment: 
  1. Learning time is too slow because I apply KNN many times for every single data instead of single time using whole data. It is becuase of my machine does not have enough memory to handle 0.1 million data.
  2. Performance of the learning algorithm is not significant. I need an algorithm more than KNN which is much faster and has better performance.