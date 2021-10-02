####################
#                  #
# Copiar todo esto #
#                  #
####################
# Hecho con gusto por Selene Muñoz Ortega (UAEH)
#V8
# LABORATORIO - Gráficos en R con ggplot2 para Ciencia de Datos
# Editando el color de los gráficos (PARTE 1)


#instalando paquete con los datos
#install.packages("gapminder")
#install.packages("ggplot2")



# cargar libreria ggplot2 y gapminder
library(ggplot2)
library(gapminder)

# cargando datos a entorno
data("gapminder")

# filtrando por año 2007
gapminder2007 <- gapminder[gapminder$year == '2007', ]


########### PARTE 2  ###############


# Escala continua (variable continua)
# haciendo grafica de puntos por poblacion
g3 <- ggplot(data = gapminder2007,
             mapping = aes(x = gdpPercap, 
                           y = lifeExp,
                           color = log(pop))) +
  geom_point()


