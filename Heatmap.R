Final corr data 

# Step 1: Load CSV
data <- read.csv("FileCo.csv", header = TRUE)

# Step 2: Inspect first rows
head(data)

traits <- data[, c("Pollenkitt","Pollen.number","Polar.axis",
                   "Fossulate.reticulate.exine","Fossulate.foveolate.exine", "Reticulate",
                   "Lumina.number","Lumina.length",
                   "Columellae","Exine.thread","Gemma","Granular.substance")]


# Step 4: Define pollinators
pollinators <- data[, c("Ant","Bee","Beetle","Butterfly","Dragonfly",
                        "Fly","Moth","Spider","Thrips","Wasp")]

# Step 5: Correlation matrix (traits vs pollinators)
cor_matrix <- cor(traits, pollinators, use = "complete.obs")
print(cor_matrix)

# Step 6: Example correlations with significance tests
cor.test(traits$Pollen.number, pollinators$Bee)
cor.test(traits$Lumina.length, pollinators$Butterfly)

# Step 7: Binary vs binary (pollinator vs pollinator)
# Use Fisher’s Exact Test for small samples
fisher.test(table(pollinators$Bee, pollinators$Butterfly))

# Step 8: Visualization
install.packages("corrplot")   # Run once
library(corrplot)

corrplot(cor_matrix, method = "color", tl.cex = 0.8)

# Set sans-serif font globally
par(family = "sans")
corrplot(cor_matrix, method = "color",
         col = colorRampPalette(c("blue", "white", "red"))(200),
         tl.cex = 1.5, # increase label size
         cl.cex = 1.2,   # increase legend size
         number.cex = 0.7,
         tl.col = "black", tl.srt = 36)
