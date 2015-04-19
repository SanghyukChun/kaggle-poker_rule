# kaggle-poker_rule
repository for poker rule induction in kaggle

## First Try
* Result: 0.67575
* Submission date: Sat, 21 Mar 2015 04:58:34
* Feature Extraction: Make 5 dimensional multinomial data to 52 dimensional binary data and apply PCA
* Learning Algorithm: KNN using cosine similarity
* Comment: 
  1. Learning time is too slow because I apply KNN many times for every single data instead of single time using whole data. It is becuase of my machine does not have enough memory to handle 0.1 million data.
  2. Performance of the learning algorithm is not significant. I need an algorithm more than KNN which is much faster and has better performance.
  
## Second Try
* Result: 0.96908
* Submission date: Thu, 16 Apr 2015 15:01:46
* Feature Extraction: Use only rank and sort them
* Learning Algorithm: 1-NN
* Comment:
  1. This idea is extremly easy but very powerful. ~~Need to verify why this feature is powerful.~~ It is because, in real poker rule,
suit of card is not main criteria. Even if we ignore suit of cards and order of cards, we only lose Flush and Royal flush which is relatively very small than other hands.
Then possible permutation of cards are only ( 13 choose 5 - 13 ) = 1274. Subtracting 13 is required because there are only 4 same ranks.
However number of training data is more than 25,000. Therefore, with high probability, we can observe whole card permutations if we consider rank of cards only.
It is also why 1-NN is powerful while 3-NN or 4-NN get worse performance than 1-NN. With high probability, we can choose exactly same card permutations in training set.