library("hasseDiagram")
dat <- read.csv("/home/jestinjoy/Dropbox/fisat/teaching/dcs/pgm/new1_medals.csv", header = FALSE)
num=13
mat <- matrix(data = FALSE, nrow = num, ncol = num)
cont <- as.vector(dat$V1)
for(i in 1:num) 
{ 
  for (j in 1:num) {
    if (dat[i,3] >= dat[j,3] & ((dat[i,3] +  dat[i,4])>= (dat[j,3] + dat[j,4]))  & ((dat[i,3] +  dat[i,4] +  dat[i,5])>= (dat[j,3] + dat[j,4]+ dat[j,5])))
        {
          mat[i,j]=TRUE
      }
    }
}
hasse(mat,labels = cont, parameters = list(direction="both"))
