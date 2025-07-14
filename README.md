# 📊 Regression Tree Work

This project demonstrates the use of **regression trees** in R using a custom dataset (`MacOneData.csv`). The main goal is to explore how decision tree models can be applied to predict numeric outcomes based on categorical and continuous predictors.

---

## 📁 Repository Structure

```
├── .gitignore                # Git ignored files
├── LICENSE.md                # Project license
├── MacOneData.csv            # Dataset used for regression tree modeling
├── README.md                 # Project overview and documentation
└── RegressionTreeScript.R    # R script for building and analyzing regression trees
```

---

## 📌 Features

- Preprocessing of raw data (conversion of categorical variables).
- Implementation of **regression trees** using the `rpart` package.
- Visualization of model complexity and tree structure.
- Analysis of prediction results and split behavior.
- Comparison of tree sizes and pruning with complexity plots.

---

## 📈 Model Overview

- **Algorithm Used**: `rpart` (Recursive Partitioning and Regression Trees)
- **Splitting Criterion**: ANOVA method
- **Target Variable**: `COST`
- **Predictors**: `DIST`, `LOTYPE`, `TLENGTH`, `WIDTH`, `EQPMNT`

---

## 🛠️ How to Run

### Prerequisites

Ensure you have R installed with the required package:

```r
install.packages("rpart")
```

### Execution

Open the `RegressionTreeScript.R` in RStudio or any R environment, and run the script. It will:
- Load and preprocess the dataset.
- Build and visualize regression tree models.
- Display summaries and plots for model interpretation.

---

## 📊 Sample Visual Outputs

Plots generated include:
- Tree diagrams
- Complexity parameter plots (`cp`)
- Pruned tree comparisons

*(See the repo for screenshots and code execution examples.)*

---

## 📚 Dataset Info

The dataset `MacOneData.csv` contains engineered data with both categorical and continuous fields relevant to cost estimation scenarios.

---

## 🤝 Contributing

Feel free to fork this repo and submit a pull request for improvements, bug fixes, or enhancements.

---

## 📄 License

This project is licensed under the MIT License. See the `LICENSE.md` file for details.
