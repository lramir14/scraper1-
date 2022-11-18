#Acá el cursito estará enfocado en usar Rvest 
install.packages("rvest")
library(rvest)
library(dplyr)

url = "https://www.elfinanciero.com.mx/opinion/"
page = read_html(url)
name_col = page %>% html_nodes(".columnist-name") %>% html_text()
name_col
title_col = page %>% html_nodes(".border_color_black") %>%  html_text()
title_col
# name_columna = page %>%  html_nodes(".column-name") %>% html_text()

matrix1 <- data.frame(name_col,title_col,name_columna, stringsAsFactors = FALSE)
View(matrix1)

#Paréntesis pa'l senado

url2 = "https://www.senado.gob.mx/64/votaciones/por_anio/LXV/2"
page2 = read_html(url2)
name2 = page %>% html_nodes("#mySection div") %>% html_text()
#fin del paréntesis
#Para Monreal 

url3 = "https://www.senado.gob.mx/64/votaciones/1236"
page3 = read_html(url3)
estatus = page %>% html_nodes(".col-sm-1 strong") %>% html_text()

iniciativa = page %>% html_nodes(".col-sm-11 a") %>% html_text()

matrix3 <- data.frame(estatus,iniciativa,stringsAsFactors = FALSE)


#Para la cámara de diputados

link = "http://gaceta.diputados.gob.mx/Gaceta/Votaciones/65/vot65_a2primero.html"

page2 = read_html(link)
date = page2 %>% html_nodes ("body > font") %>% html_text()
date
iniciativa = page2 %>% html_nodes("li") %>% html_text()
iniciativa
votacion_url = page2 %>% html_nodes("body > ul > li > a") %>% html_attr("href")
votacion_url
matrix2 <- data.frame(iniciativa, votacion_url, stringsAsFactors = FALSE)
matrix2



