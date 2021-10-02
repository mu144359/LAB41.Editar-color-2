####################
#                  #
# Copiar todo esto #
#                  #
####################
# Hecho con gusto por Selene Muñoz Ortega (UAEH)
#V8
# LABORATORIO - Gráficos en R con ggplot2 para Ciencia de Datos
# Editando el color de los gráficos (PARTE 2)


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

# Ver g3
g3

# cambiando el color de los puntos según gradiente
g3 + scale_color_gradient(low="blue", high = "red")

# cambiando el color de los puntos según gradiente asignar punto medio
g3 + scale_color_gradient2(midpoint = 16,
                           low="blue",
                           mid = "white", 
                           high = "red", 
                           space="Lab" )

# haciendo histograma en poblacion
g4 <- ggplot(data = gapminder2007,
             mapping = aes(x = lifeExp,
                           fill = ..count..)) +
  geom_histogram()

# Ver g4
g4

# cambiando color de barras histograma
g4 + scale_fill_gradient(low="blue", high = "red")



