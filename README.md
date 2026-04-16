# School Admission Allocation Model (Lexicographic Optimization Framework)

## Overview

This repository provides the supplementary R code for a research study on school admission allocation under quota-based policies. The framework models a centralized assignment problem where applicants are allocated to schools subject to capacity constraints, eligibility criteria, and category-based quotas.

The proposed approach integrates efficiency, fairness, and system-level balance using a lexicographic multi-objective optimization framework. The implementation is fully reproducible and designed to support methodological transparency and extensibility.

---

## Repository Structure

R/00_packages.R              # Package loading and setup
R/01_utils.R                 # Helper functions and utilities
R/02_policy_and_data.R       # Policy parameters and synthetic data generation
R/03_panel_and_targets.R     # Applicant–school panel construction and balance targets
R/04_models_baseline.R       # Baseline optimization model
R/05_models_lexicographic.R  # Lexicographic multi-stage optimization model
R/06_evaluation.R            # Assignment extraction and performance evaluation
R/07_plotting.R              # Publication-quality visualizations
R/08_pipeline.R              # End-to-end execution pipeline
source_all.R                 # Script to load all modules
run_example.R                # Example execution script

---

## Model Description

The allocation problem is formulated as a constrained optimization model with the following key components:

- Decision variables representing applicant–school assignments  
- Capacity constraints at the school level  
- Quota constraints across predefined applicant categories  
- Eligibility conditions based on policy rules  
- Preference structures reflecting applicant choices  

Two allocation approaches are implemented:

### 1. Baseline Model
A single-objective optimization that:
- maximizes total admissions, and  
- improves assignment quality based on preference and scoring criteria.

### 2. Lexicographic Optimization Model
A multi-stage optimization framework that sequentially enforces priority objectives:

1. Maximize total admissions  
2. Maximize system-wide utilization (balanced school fill)  
3. Promote geographically coherent allocations (e.g., local accessibility)  
4. Maximize preference-based assignment quality  

---

## Data Generation

The model uses synthetic data to ensure full reproducibility and to avoid reliance on sensitive administrative datasets.

---

## How to Run

1. Open the repository in R or RStudio.  
2. Run:

source("source_all.R")
source("run_example.R")

---

## Outputs

The pipeline generates:

- allocation results  
- school-level utilization statistics  
- category-level performance summaries  
- preference satisfaction metrics  
- publication-ready figures  

Outputs are saved to the directory `grade1_outputs/` when `save_outputs = TRUE`.

---

## Notes

- This implementation is intended for research purposes only.  
- It simplifies some real-world administrative processes.  
- The framework is adaptable to other centralized allocation problems.  

---

## Reproducibility

- Uses synthetic data  
- Fixed random seeds  
- Fully automated pipeline  

---

## Suggested Citation

Supplementary code for the lexicographic optimization framework for quota-based school admission allocation.

---

## License

MIT License
