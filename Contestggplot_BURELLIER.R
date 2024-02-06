##Gabriel Burellier
##06/01/2024
##CONTESTGGPLOT

############DIAMONDS##################
data("diamonds")
diamonds

names(diamonds)
dim(diamonds)

library(ggplot2)
#"0,0.2,0.4,0.6,0.8,1,1.25,1.5,2,3 breaks =c("0","0.5","1","4"+ geom_histogram(bins = 4)

ggplot(data = diamonds, 
       mapping = aes(x = price, y = depth)) +
  geom_point() + geom_smooth(method="lm") + facet_wrap(vars(cut)) + geom_ribbon(aes(ymin = 59, ymax = 63,col="red",fill=NULL)) + theme_light()
#En général, plus les diamants sont collectés proche de 62m de profondeur, plus ils sont facilement travaillable (coupe idéal)#En général, plNULLus les diamants sont collectés proche de 62m de profondeur, plus ils sont facilement travaillable (coupe idéal)
#J'aurais aimé mettre en transparent le geom_ribbon et simplement laissé les bordures

###à améliorer
##ggplot(data = diamonds, 
       mapping = aes(x = carat))+ scale_fill_manual(( start = "0", end = "2", na.value = "red"), labels = c("Grp 1", "Grp 2", "Grp 3", "R")) +
  facet_grid(rows = vars(cut))+
  theme_bw()

##marche mais pas pratique, je voulais voir l'influence du nombre de carats avec la "facilité" et la réussite de la coupe; 
##j'aurais aimé faire de plus petits groupes (entre 0 et 0.2; entre 0.2 et 0.4; ...)
ggplot(data = diamonds, 
       mapping = aes(x = carat))+ geom_histogram(bins = 10)+scale_fill_brewer(palette = "green") +
  facet_grid(rows = vars(cut))+
  theme_bw()



ggplot(diamonds, aes(x=color, y = carat)) + geom_boxplot()  

ggplot(diamonds, aes(x=clarity, y = carat)) + geom_boxplot()  

ggplot(data = diamonds, 
       mapping = aes(x = price))+ geom_histogram(bins = 8)+scale_fill_brewer(palette = "grey") +
  facet_grid(rows = vars(color))+ geom_line(y=2500,col="blue") + 
  theme_bw()

