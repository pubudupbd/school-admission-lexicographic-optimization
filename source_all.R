# Source all function files in dependency order

source(file.path("R", "00_packages.R"))
source(file.path("R", "01_utils.R"))
source(file.path("R", "02_policy_and_data.R"))
source(file.path("R", "03_panel_and_targets.R"))
source(file.path("R", "04_models_baseline.R"))
source(file.path("R", "05_models_lexicographic.R"))
source(file.path("R", "06_evaluation.R"))
source(file.path("R", "07_plotting.R"))
source(file.path("R", "08_pipeline.R"))
