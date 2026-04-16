# Minimal reproducible example

source("source_all.R")

results <- run_grade1_admission_pipeline(
  n_schools = 35,
  n_applicants = 3200,
  n_preferences = 5,
  school_seed = 2026,
  applicant_seed = 2027,
  include_operational_quota = FALSE,
  target_fill_rate = 0.70,
  save_outputs = TRUE,
  output_dir = "grade1_outputs",
  verbose = TRUE
)

cat("\n================ MODEL COMPARISON ================\n")
print(results$comparison_table)

cat("\n================ BASELINE OVERALL METRICS ================\n")
print(results$baseline$evaluation$overall)

cat("\n================ LEXICOGRAPHIC OVERALL METRICS ================\n")
print(results$balanced$evaluation$overall)
