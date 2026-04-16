# Sri Lanka Grade 1 National School Allocation Model

This repository contains the supplementary R code for a research prototype on Grade 1 / national school admission allocation in Sri Lanka. The code is organized into separate function files so the workflow is easier to inspect, cite, and reuse.

## Repository structure

```
R/00_packages.R              # package loading
R/01_utils.R                 # helper utilities
R/02_policy_and_data.R       # policy settings and synthetic data generation
R/03_panel_and_targets.R     # applicant-school panel and balance targets
R/04_models_baseline.R       # baseline optimization model
R/05_models_lexicographic.R  # lexicographic balancing model
R/06_evaluation.R            # assignment extraction and evaluation
R/07_plotting.R              # publication-style plots
R/08_pipeline.R              # end-to-end pipeline
source_all.R                 # sources all files in order
run_example.R                # example run
```

## How to run

1. Open the repository in RStudio.
2. Run:

```r
source("source_all.R")
source("run_example.R")
```

The script installs any missing CRAN packages automatically.

## Notes

- The model uses synthetic data for reproducibility.
- This is a research prototype and not an official admission engine.
- Generated outputs are written to `grade1_outputs/` when `save_outputs = TRUE`.

## Suggested citation in paper

Supplementary code repository for the Grade 1 national school allocation model used in this study.
