###Plotting
##Two ways to arrange ggplots descending or ascending

#1 ggplot(aes(x=reorder(CountryCitizen, -AverageTimePerWeek), weight = AverageTimePerWeek))+
#2 mutate(CountryCitizen = fct_reorder(CountryCitizen,-AverageTimePerWeek)


###Scales
##To have a $ axis 

#library(scales)
#scale_x_continuous(labels = dollar_format())


###Plotting
##Colouring bars trick

#ggplot(aes(xyz, ... , col = xyz))+
#geom_col(show.legend = FALSE)


###Plotting
##Changing color of col arguement

#ggplot(df,aes(x=...,y=...,col = ...))+
#scale_col_gradient2(high = "red" , low = "blue" ,midpoint = 0.5)


###Plotting
##Rotating axis labels

#+theme(axis.text.x = element_text(angle = 90 , hjust = 1))


###Plotting
##Creating confidance interval

#ggplot(aes(x, y(should be ratio,since CI is in ratio))+
#geom_line()+
#geom_ribbon(aes(ymin = low, ymax = high), alpha = 0.2)


###Plotting
##Changing format of axis

#+scale_x_continuous(labels = comma_format())


###Plotting
##Plotting binomial response variables

#+geom_smooth(method = "glm", se = FALSE, method.args = list(family = "binomial"))


###Plotting
##Plotting one line lm for multiple lm 

#ggplot(mtcars,aes(x=wt,y=mpg),col = factor(cyl))+
#geom_point()+
#geom_smooth(method = "lm")+
#geom_smooth(method = "lm" aes(group = 1))


###Plotting
##To zoom in

#scale_x_continuous(limits = c(..,..))
#or
#coord_cartersian(xlim = c(..,..))

###Plotting
##To customize breaks

# scale_y_continuous(breaks = seq(0,10,1))


###Plotting
##To create a density histogram

#ggplot(adult, aes (x = SRAGE_P, fill= factor(RBMI))) + 
#geom_histogram(aes(y=..density..),binwidth = 1)


###Plotting
##geom_smooth with poisson distribution

#geom_smooth(method = "glm", method.args = list(family = "poisson"))


###Plotting
##To create text plot 

#geom_text(aes(label = ...),check_overlap = TRUE , vjust = ...,hjust = ...)


###Plotting
##when lumping, fct_reorder might not show correct value

#library(drlib)

#instead of fct_reorder, use fct_within, same arguements but add facet arguement
#+scale_x_reordered()
#https://youtu.be/tCa2di7aEP4?t=502


###Plotting
##Change color legend to log scale

#scale_color_gradient2(low = "blue", high = "red", midpoint = log10(median(maryland_bridges$avg_daily_traffic)), trans = "log10", labels = comma_format())


###Plotting
##Reverse fill legend order

#guides(fill = guide_legend(reverse = TRUE))


###Plotting
##Reorder legend based on value

#same fct_reorder as barplot


###Plotting
##Adding to variable names

#mutate(franchise = glue("{ franchise } ({ year_created })))