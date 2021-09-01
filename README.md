# usa-congressional-voting-1984
Simple data exploration and classification of Democrats and Republicans

## CLASSIFICATION RESULTS
| **k-Nearest-Neighbour** | Predicted: Democrat | Predicted: Republican |
| ----------------------- |:-------------------:| :--------------------:|
| Actual: Democrat        | 62                  | 44                    |
| Actual: Republican      | 43                  | 25                    |

| **Decision Tree**       | Predicted: Democrat | Predicted: Republican |
| ----------------------- |:-------------------:| :--------------------:|
| Actual: Democrat        | 56                  | 50                    |
| Actual: Republican      | 42                  | 26                    |

| **Naïve Bayes**         | Predicted: Democrat | Predicted: Republican |
| ----------------------- |:-------------------:| :--------------------:|
| Actual: Democrat        | 77                  | 29                    |
| Actual: Republican      | 57                  | 11                    |


| **Accuracy**  | k-Nearest-Neighbour     | Decision Tree           | Naïve Bayes             |
| --------------| ----------------------- | ----------------------- | ----------------------- |
|               | 62 + 25 / 174 = 0.50    | 56 + 26 / 174 = 0.47    | 77 + 11 / 174 = 0.51    |

| **Precision** | k-Nearest-Neighbour     | Decision Tree           | Naïve Bayes             |
| --------------| ----------------------- | ----------------------- | ----------------------- |
| Democrat      | 62 / (62 + 43) = 0.5905 | 56 / (56 + 42) = 0.5714 | 77 / (77 + 57) = 0.5746 |
| Republican    | 25 / (25 + 44) = 0.3623 | 26 / (26 + 50) = 0.3421 | 11 / (11 + 29) = 0.2750 |
		
| **Recall**    | k-Nearest-Neighbour     | Decision Tree           | Naïve Bayes             |
| --------------| ----------------------- | ----------------------- | ----------------------- |
| Democrat      | 62 / 62 + 44 = 0.5849   | 56 / (56 + 50) = 0.5283 | 77 / (77 + 29) = 0.7264 |
| Republican    | 25 / 25 + 43 = 0.3676   | 26 / (26 + 42) = 0.3824 | 11 / (11 + 57) = 0.1618 |
	
