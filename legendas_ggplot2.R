
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

# Título da legenda ------------------------------------------------------------------------------------------------------------------------

p + labs(fill = "Dose (mg)")

# Posição da legenda -----------------------------------------------------------------------------------------------------------------------

## Mudando a posição da legenda a partir dos valores: "left", "top", "right", "bottom",
## "none" (remove a legenda) e vetor c(x,y).

p + theme(legend.position = "top")

p + theme(legend.position = c(0.7, 0.2), legend.direction = "horizontal")

# Ordem dos rótulos ------------------------------------------------------------------------------------------------------------------------

## Para alterar a ordem dos rótulos onde as áreas do boxplot são preenchidas
## por grupos, você pode seguir da seguinte maneira:

p + scale_fill_discrete(guide = guide_legend(reverse = TRUE))

# Tamanho e cor da legenda -----------------------------------------------------------------------------------------------------------------

p + theme(legend.title = element_text(color = "blue", size = 20), 
          legend.text = element_text(color = "red", size = 15))

# Manipulando os rótulos -------------------------------------------------------------------------------------------------------------------

## Para alterar manualmente a ordem dos itens no eixo x:

p + scale_x_discrete(limits = c("2", "0.5", "1"))

## Para editar o título da legenda e dos labels (rótulos):

p + scale_fill_discrete(name = "Dose (mg)", labels = c("A", "B", "C"))

# Alterando as cores manualmente -----------------------------------------------------------------------------------------------------------

## Para modificar manualmente as cores da legenda:

## - scale_color_manual() ou scale_colour_manual(): modifica a cor dos pontos e linhas;
## - scale_fill_manual() modifica as cores de preenchimento dos gráficos de barras e boxplot.

p + scale_fill_manual(values = c("#d8b365", "#f5f5f5", "#5ab4ac"))
