#a <- read.table(gzfile("SS-Butterfly_labels.tsv.gz"))

edges <- read.table(gzfile("SS-Butterfly_weights.tsv.gz"))
edges <- as.matrix(edges[c(100:102), c(1,2)])
graph <- igraph::graph_from_edgelist(edges)
plot(graph)



edges <- data.frame(V1 = c(100,101), V2 = c(101,102))
edges <- as.matrix(edges)
plot(igraph::graph_from_edgelist(edges))
