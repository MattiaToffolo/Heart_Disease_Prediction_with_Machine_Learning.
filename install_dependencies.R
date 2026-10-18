packages <- c(
  "caret",
  "class",
  "gmodels",
  "pastecs",
  "ROSE",
  "tree",
  "randomForest",
  "ModelMetrics",
  "e1071",
  "MASS"
)

missing_packages <- setdiff(packages, rownames(installed.packages()))

if (length(missing_packages) > 0) {
  install.packages(missing_packages, repos = "https://cloud.r-project.org")
}