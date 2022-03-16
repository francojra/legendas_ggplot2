
# Legendas ggplot2 -------------------------------------------------------------------------------------------------------------------------
# Autoria do script: Jeanne Franco ---------------------------------------------------------------------------------------------------------
# Data: 15/03/2022 -------------------------------------------------------------------------------------------------------------------------
# Fonte: Página do Instagram R Descomplicado -----------------------------------------------------------------------------------------------

# Criando um exemplo -----------------------------------------------------------------------------------------------------------------------

library(ggplot2)

ToothGrowth$dose <- as.factor(ToothGrowth$dose)

p <- ggplot(ToothGrowth, aes(x = dose, y = len)) +
  geom_boxplot(aes(fill = dose))

p

# Principais funções para alterar legendas -------------------------------------------------------------------------------------------------

## p + labs() altera o título da legenda.

p + labs(fill = "Dose (mg)") # Se a legenda está ligada ao argumento fill
p + labs(color = "Dose (mg)") # Se sua legenda está ligada ao argumento color

## Assim por diante se sua legenda está ligada ao argumento 'shape', 'linetype', etc.