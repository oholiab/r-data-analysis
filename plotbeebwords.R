library("XML")
library("calibrate")
library("tm")

doc <- xmlTreeParse("http://feeds.bbci.co.uk/news/rss.xml")
src <- xpathApply(xmlRoot(doc), "//description")
for (i in 1:length(src)){
	if (i==1) {
		foo <- xmlSApply(src[[i]], xmlValue)
		DATA <- data.frame(t(foo), stringsAsFactors=FALSE)
	}
	else{
		foo<-xmlSApply(src[[i]],xmlValue)
		tmp<-data.frame(t(foo), stringsAsFactors=FALSE)
		DATA<-rbind(DATA, tmp)
	}
}
(test <- Corpus(DataframeSource(DATA, encoding = "ASCII")))
dtm <- DocumentTermMatrix(test)
sv <- svd(dtm)
U <- sv$u
# we're actually just interested in V anyway
Vt <- t(sv$v)
S <- diag(sv$d)
V = sv$v
rownames(V) = colnames(dtm)
p = plot(V)
for(i in 1:nrow(V)){
	textxy(V[i,1],V[i,2],rownames(V)[i])
}
