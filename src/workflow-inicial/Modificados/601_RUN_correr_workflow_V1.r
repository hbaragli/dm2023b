# Corrida general del workflow

options(error = function() {
  traceback(20)
  options(error = NULL)
  stop("exiting after script error")
})


# corrida de cada paso del workflow

# primeros pasos, relativamente rapidos
#source("~/dm2023b/src/workflow-inicial/modificados/611_CA_reparar_dataset_V1.r")
#source("~/dm2023b/src/workflow-inicial/modificados/621_DR_corregir_drifting_V1.r")
source("~/dm2023b/src/workflow-inicial/Modificados/631_FE_historia_V2.r")
source("~/dm2023b/src/workflow-inicial/Modificados/641_TS_training_strategy_V2.r")

# ultimos pasos, muy lentos
source("~/dm2023b/src/workflow-inicial/Modificados/651_HT_lightgbm_V2.r")
source("~/dm2023b/src/workflow-inicial/Modificados/661_ZZ_final_V2.r")
