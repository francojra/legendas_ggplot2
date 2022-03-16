
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

## p + labs(fill = "Dose (mg)") # Se a legenda está ligada ao argumento fill
## p + labs(color = "Dose (mg)") # Se sua legenda está ligada ao argumento color
## Assim por diante se sua legenda está ligada ao argumento 'shape', 'linetype', etc.

## p + theme() altera a cor de fundo, borda da caixa da legenda, tamanho e cor da fonte, etc.

## p + scale_x_discrete(limits = c=("2", "0.5", "1")) altera a ordem dos itens da legenda
## se o objeto da legenda for discreto e também do eixo x.

## p + scale_fill_discrete(name = "Dose (mg)", labels = c("A", "B", "C")) renomeia o
## título da legenda e os rótulos de texto se o seu objeto da legenda for discreto.

## p + theme(legend.title = elemente_blank()) remove o título da legenda.

