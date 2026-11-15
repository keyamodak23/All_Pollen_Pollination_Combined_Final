library(circlize)
pollen <- read.csv("taxa vs vegetation.csv")
pollen
grid.col = c("tropical" = "red", "tropical to subtropical" = "yellow", "subtropical" = "green", "subtropical to subtemperate" = "cornsilk3", "subtemperate to temperate"  = "azure4", temperate = "coral4")
chordDiagram(pollen, grid.col = grid.col)