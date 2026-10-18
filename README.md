# Heart Failure Prediction

**University exam project**, developed for the Machine Learning exam at the University of Milano-Bicocca, BSc in Statistics and Economics, academic year 2020/2021. Author: Mattia Toffolo.

An introductory comparison of supervised learning models for predicting mortality among patients with heart failure. This is an educational exercise, not a clinically validated tool.

## Data and Approach

The dataset contains **299 patients and 13 columns**, with no missing values. The target is `DEATH_EVENT`: 0 for survival during follow-up (203 patients), 1 for death (96 patients).

After exploratory analysis and preprocessing (removing `time`, converting binary variables to factors, and log-transforming CPK and serum creatinine), six models were compared in R: logistic regression, random forest, decision tree, linear SVM, radial SVM, and k-nearest neighbors. Evaluation used 100 repeated hold-out splits, reporting accuracy, balanced accuracy, recall, specificity, and ROC AUC. Feature ranking and the final experiment were performed separately in Weka.

## Original Results

- Random forest achieved the highest accuracy in the initial model comparison reported in the presentation.
- Information gain ranking in Weka identified **serum creatinine** and **ejection fraction** as the two most informative variables.
- The final random forest, using only these two variables, achieved approximately **75% accuracy** with leave-one-out cross-validation in Weka.

Results are taken from the original exam materials, not newly reproduced. The Weka experiment is documented but its model/configuration is not included; its validation differs from the R comparison, so scores are not directly comparable. The small, geographically limited sample and weaker recognition of deaths limit generalizability.

## Repository Contents

| File | Description |
| --- | --- |
| [DifferentAlgorithmsTested.R](DifferentAlgorithmsTested.R) | Original R analysis, with formatting cleanup and relative dataset paths. |
| [heart_failure_clinical_records_dataset.csv](heart_failure_clinical_records_dataset.csv) | Dataset used for the exam. |
| [Presentazione.pptx](Presentazione.pptx) | Original presentation in Italian. |
| [main.pdf](main.pdf) | Additional original PDF material. |
| [install_dependencies.R](install_dependencies.R) | Installs the packages loaded by the original script. |

## Running the R Analysis

Install R, open a session with this repository as the working directory, then run:

```r
source("install_dependencies.R")
source("DifferentAlgorithmsTested.R")
```

Use a dedicated R session: the script clears the environment at startup. It uses seed `1234`, produces plots, and stores the comparison in `matr_metrics`. Package versions from 2021 were not recorded.

**Original modeling logic preserved:** formatting and dataset paths were cleaned up, and a stray summary call was removed. Known issues remain in the kNN and tree-pruning blocks. Recall refers to class 0; ROC AUC uses hard predictions. This is an archive of the exam work, not a corrected pipeline.

## Dataset Reference

[UCI Heart Failure Clinical Records](https://archive.ics.uci.edu/dataset/519/heart+failure+clinical+records), also discussed by [Chicco and Jurman (2020)](https://doi.org/10.1186/s12911-020-1023-5). The data remains subject to its original terms.
