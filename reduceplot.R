# THIS IS STILL A REAL HACK
# origin is hardcoded for now and I've only reduced x
# values. This will be implemented for circles and there
# will be nice functions and everything please don't
# hate me

origin <- c(-0.006816706, -0.002321304)
radius <- 0.1
first = TRUE
j = 1
words = NA
for(i in rownames(V)){
	if(V[i,1] > (origin[1] + radius)){
		if(first){
			words <- c(i)
			first <- FALSE
		} else {
			words <- cbind(words, c(i))
		}
	} else if(V[i,1] < (origin[1] - radius)){
		if(first){
			words <- c(i)
			first <- FALSE
		} else {
			words <- cbind(words, c(i))
		}
	}
}
print(words)
V2 <- V[!rownames(V) %in% words,]
if(!first){
	x11()
	plot(V2)
	labelplot(V2)
}
