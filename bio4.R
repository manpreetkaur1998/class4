a=c(34,56,78,90)
as.data.frame(a)
a=as.data.frame(a)
a
rownames(a)=c("sample 1","sample 2","sample 3","sample 4")
a
colnames(a)="B"
a
a$B
a$c=c(23,24,26,98)
a
a$f= a$B+ a$c
a
# how to create lineplots/basic plot
plot(1:5)
plot(1:4)
plot(1:5)
plot(a$B)
plot(a$B,type="l") # line plot
plot(a$B,type="b") # dotted plot
plot(a$c)
plot(a$c,type="l")
plot(a$c,type="b")
plot(a$B,a$c)
plot(a$B, a$c, pch=6)
plot(a$B,a$c, pch=20)
plot(a$B,a$c,pch=15)
?pch
points(a$B,a$c,col="pink", pch=12)
points(a$B,a$f, col="red", pch=4)
#add a text i the plot
mtext("c vs B in green")
plot(a$f)
plot(a$f, a$c)
plot(a$f,type="l")
plot(a$c,type="b")
#barplots
barplot(a$B)
barplot(a$B,names.arg = rownames(a))
barplot(a$B,names.arg = rownames(a), horiz = TRUE)
barplot(a$B,las=2, xlab = "elapsedtime(s)", main = "time trial")        
barplot(a$B, col = "purple")
?rnorm
a
rnorm(100,mean=10,sd=20)
d=rnorm(100,mean = 10,sd=20)
d
# to create histograms
hist(d)
e=rnorm(100,mean = 10,sd=50)
e
hist(e)
#boxplot
boxplot(d)
boxplot(e)
boxplot(d,e) # because diffe in sd
boxplot(d,e,names = c("d","e")
        ,ylab="elapsed time(s)", main="time trial")
# how to create a pdf fileof chart/plots o the system       
pdf("myplot.pdf")        
hist(d)# 1 by 1 start adding ur data/plots
hist(e)
boxplot(d,e)
dev.off()
