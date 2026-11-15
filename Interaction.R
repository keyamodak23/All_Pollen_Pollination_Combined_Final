plantweb <- read.csv("FILE new.csv", row.names = 1)
plotweb(plantweb)
?plotweb
data(Safariland)
plotweb(Safariland)
# NEW BIPARTITE NETWORK
plotweb(sortweb(plantweb, sequence = seq.lower), labsize=0.7, col.low ="skyblue",col.high=c("orange","blue4","seagreen","violet","red","yellow"),
        text.high.col="blue", col.interaction = "black", ybig = 13, y.lim=c(-4,4))

