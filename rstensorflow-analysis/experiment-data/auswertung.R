# data folder
setwd("~/HM/WS2017/Hauptseminar/tensorflow-source/RSTensorFlowHM/tensorflow/rstensorflow-analysis/experiment-data/")

# ---------------------------------
#   j5Trepn

# Eigen-Data
j5TrepnDataEigen <- read.csv(file = "J5/preprocessed/experiment-trepn-eigen.csv")
j5TrepnDataEigen$Time...ms. <- j5TrepnDataEigen$Time...ms./1000/60
j5TrepnDataEigen$Time...ms..1 <- j5TrepnDataEigen$Time...ms..1/1000/60
j5TrepnDataEigen$Time...ms..2 <- j5TrepnDataEigen$Time...ms..2/1000/60
j5TrepnDataEigen$Time...ms..3 <- j5TrepnDataEigen$Time...ms..3/1000/60
j5TrepnDataEigen$Time...ms..4 <- j5TrepnDataEigen$Time...ms..4/1000/60
# einzel plots
jpeg("plots/j5Trepn-eigen-gpufreq.jpg")
plot(x = j5TrepnDataEigen$Time...ms., y = j5TrepnDataEigen$GPU.Frequency..KHz., xlab = 'Zeit in min', ylab = 'GPU-Frequenz in KHz', col = 'white')
loj5TrepnEigenGPUF <- loess(j5TrepnDataEigen$GPU.Frequency..KHz. ~ j5TrepnDataEigen$Time...ms.)
lines(loj5TrepnEigenGPUF, col = 'red')
dev.off()
jpeg("plots/j5Trepn-eigen-gpuload.jpg")
plot(x = j5TrepnDataEigen$Time...ms..1, y = j5TrepnDataEigen$GPU.Load...., xlab = 'Zeit in min', ylab = 'GPU-Auslastung in %', col = 'white')
loj5TrepnEigenGPUL <- loess(j5TrepnDataEigen$GPU.Load.... ~ j5TrepnDataEigen$Time...ms..1)
lines(loj5TrepnEigenGPUL, col = 'red')
dev.off()
jpeg("plots/j5Trepn-eigen-cpuload.jpg")
plot(x = j5TrepnDataEigen$Time...ms..2, y = j5TrepnDataEigen$CPU.Load...., xlab = 'Zeit in min', ylab = 'CPU-Auslastung in %', col = 'white')
loj5TrepnEigenCPUL <- loess(j5TrepnDataEigen$CPU.Load.... ~ j5TrepnDataEigen$Time...ms..2)
lines(loj5TrepnEigenCPUL, col = 'red')
dev.off()
j5TrepnDataEigen$Memory.Usage..KB. <- j5TrepnDataEigen$Memory.Usage..KB./1024
jpeg("plots/j5Trepn-eigen-memory.jpg")
plot(x = j5TrepnDataEigen$Time...ms..3, y = j5TrepnDataEigen$Memory.Usage..KB., xlab = 'Zeit in min', ylab = 'RAM in MB', col = 'white')
loj5TrepnEigenMemory <- loess(j5TrepnDataEigen$Memory.Usage..KB. ~ j5TrepnDataEigen$Time...ms..3)
lines(loj5TrepnEigenMemory, col = 'red')
dev.off()
j5TrepnDataEigen$Memory.Usage..KB..App <- j5TrepnDataEigen$Memory.Usage..KB..App/1024
jpeg("plots/j5Trepn-eigen-memory-app.jpg")
plot(x = j5TrepnDataEigen$Time...ms..3, y = j5TrepnDataEigen$Memory.Usage..KB..App, xlab = 'Zeit in min', ylab = 'RAM in MB', col = 'white')
loj5TrepnEigenMemoryApp <- loess(j5TrepnDataEigen$Memory.Usage..KB..App ~ j5TrepnDataEigen$Time...ms..3)
lines(loj5TrepnEigenMemoryApp, col = 'red')
dev.off()

# RS-Data
j5TrepnDataRS <- read.csv(file = "J5/preprocessed/experiment-trepn-rs.csv")
j5TrepnDataRS$Time...ms. <- j5TrepnDataRS$Time...ms./1000/60
j5TrepnDataRS$Time...ms..1 <- j5TrepnDataRS$Time...ms..1/1000/60
j5TrepnDataRS$Time...ms..2 <- j5TrepnDataRS$Time...ms..2/1000/60
j5TrepnDataRS$Time...ms..3 <- j5TrepnDataRS$Time...ms..3/1000/60
j5TrepnDataRS$Time...ms..4 <- j5TrepnDataRS$Time...ms..4/1000/60
# einzel plots
jpeg("plots/j5Trepn-rs-gpufreq.jpg")
plot(x = j5TrepnDataRS$Time...ms., y = j5TrepnDataRS$GPU.Frequency..KHz., xlab = 'Zeit in min', ylab = 'GPU-Frequenz in KHz', col = 'white')
loj5TrepnRSGPUF <- loess(j5TrepnDataRS$GPU.Frequency..KHz. ~ j5TrepnDataRS$Time...ms.)
lines(loj5TrepnRSGPUF, col = 'red')
dev.off()
jpeg("plots/j5Trepn-rs-gpuload.jpg")
plot(x = j5TrepnDataRS$Time...ms..1, y = j5TrepnDataRS$GPU.Load...., xlab = 'Zeit in min', ylab = 'GPU-Auslastung in %', col = 'white')
loj5TrepnRSGPUL <- loess(j5TrepnDataRS$GPU.Load.... ~ j5TrepnDataRS$Time...ms..1)
lines(loj5TrepnRSGPUL, col = 'red')
dev.off()
jpeg("plots/j5Trepn-rs-cpuload.jpg")
plot(x = j5TrepnDataRS$Time...ms..2, y = j5TrepnDataRS$CPU.Load...., xlab = 'Zeit in min', ylab = 'CPU-Auslastung in %', col = 'white')
loj5TrepnRSCPUL <- loess(j5TrepnDataRS$CPU.Load.... ~ j5TrepnDataRS$Time...ms..2)
lines(loj5TrepnRSCPUL, col = 'red')
dev.off()
j5TrepnDataRS$Memory.Usage..KB. <- j5TrepnDataRS$Memory.Usage..KB./1024
jpeg("plots/j5Trepn-rs-memory.jpg")
plot(x = j5TrepnDataRS$Time...ms..3, y = j5TrepnDataRS$Memory.Usage..KB., xlab = 'Zeit in min', ylab = 'RAM in MB', col = 'white')
loj5TrepnRSMemory <- loess(j5TrepnDataRS$Memory.Usage..KB. ~ j5TrepnDataRS$Time...ms..3)
lines(loj5TrepnRSMemory, col = 'red')
dev.off()
j5TrepnDataRS$Memory.Usage..KB..App <- j5TrepnDataRS$Memory.Usage..KB..App/1024
jpeg("plots/j5Trepn-rs-memory-app.jpg")
plot(x = j5TrepnDataRS$Time...ms..3, y = j5TrepnDataRS$Memory.Usage..KB..App, xlab = 'Zeit in min', ylab = 'RAM in MB', col = 'white')
loj5TrepnRSMemoryApp <- loess(j5TrepnDataRS$Memory.Usage..KB..App ~ j5TrepnDataRS$Time...ms..3)
lines(loj5TrepnRSMemoryApp, col = 'red')
dev.off()

# RS und Eigen
jpeg("plots/j5Trepn-eigen-rs-gpufreq.jpg")
plot(x = j5TrepnDataEigen$Time...ms., y = j5TrepnDataEigen$GPU.Frequency..KHz., xlab = 'Zeit in min', ylab = 'GPU-Frequenz in KHz', col = 'white')
lines(loj5TrepnEigenGPUF, col = 'red')
lines(loj5TrepnRSGPUF, col = 'blue')
dev.off()
jpeg("plots/j5Trepn-eigen-rs-gpuload.jpg")
plot(x = j5TrepnDataEigen$Time...ms..1, y = j5TrepnDataEigen$GPU.Load...., xlab = 'Zeit in min', ylab = 'GPU-Auslastung in %', col = 'white')
lines(loj5TrepnEigenGPUL, col = 'red')
lines(loj5TrepnRSGPUL, col = 'blue')
dev.off()
jpeg("plots/j5Trepn-eigen-rs-cpuload.jpg")
plot(x = j5TrepnDataEigen$Time...ms..2, y = j5TrepnDataEigen$CPU.Load...., xlab = 'Zeit in min', ylab = 'CPU-Auslastung in %', col = 'white')
lines(loj5TrepnEigenCPUL, col = 'red')
lines(loj5TrepnRSCPUL, col = 'blue')
dev.off()
jpeg("plots/j5Trepn-eigen-rs-memory.jpg")
plot(x = j5TrepnDataEigen$Time...ms..3, y = j5TrepnDataEigen$Memory.Usage..KB., xlab = 'Zeit in min', ylab = 'RAM in MB', col = 'white')
lines(loj5TrepnEigenMemory, col = 'red')
lines(loj5TrepnRSMemory, col = 'blue') 
dev.off()
jpeg("plots/j5Trepn-eigen-rs-memory-app.jpg")
plot(x = j5TrepnDataEigen$Time...ms..3, y = j5TrepnDataEigen$Memory.Usage..KB..App, xlab = 'Zeit in min', ylab = 'RAM in MB', col = 'white')
lines(loj5TrepnEigenMemoryApp, col = 'red')
lines(loj5TrepnRSMemoryApp, col = 'blue')
dev.off()

# ---------------------------------
#   s7Trepn

# Eigen-Data
s7TrepnDataEigen <- read.csv(file = "S7/preprocessed/experiment-trepn-eigen.csv")
s7TrepnDataEigen$Time...ms. <- s7TrepnDataEigen$Time...ms./1000/60
s7TrepnDataEigen$Time...ms..1 <- s7TrepnDataEigen$Time...ms..1/1000/60
s7TrepnDataEigen$Time...ms..2 <- s7TrepnDataEigen$Time...ms..2/1000/60
s7TrepnDataEigen$Time...ms..3 <- s7TrepnDataEigen$Time...ms..3/1000/60
# einzel plots
jpeg("plots/s7Trepn-eigen-cpuload.jpg")
plot(x = s7TrepnDataEigen$Time...ms..2, y = s7TrepnDataEigen$CPU.Load...., xlab = 'Zeit in min', ylab = 'CPU-Auslastung in %', col = 'white')
los7TrepnEigenCPUL <- loess(s7TrepnDataEigen$CPU.Load.... ~ s7TrepnDataEigen$Time...ms..2)
lines(los7TrepnEigenCPUL, col = 'red')
dev.off()
s7TrepnDataEigen$Memory.Usage..KB. <- s7TrepnDataEigen$Memory.Usage..KB./1024
jpeg("plots/s7Trepn-eigen-memory.jpg")
plot(x = s7TrepnDataEigen$Time...ms..3, y = s7TrepnDataEigen$Memory.Usage..KB., xlab = 'Zeit in min', ylab = 'RAM in MB', col = 'white')
los7TrepnEigenMemory <- loess(s7TrepnDataEigen$Memory.Usage..KB. ~ s7TrepnDataEigen$Time...ms..3)
lines(los7TrepnEigenMemory, col = 'red')
dev.off()
s7TrepnDataEigen$Memory.Usage..KB..App <- s7TrepnDataEigen$Memory.Usage..KB..App/1024
jpeg("plots/s7Trepn-eigen-memory-app.jpg")
plot(x = s7TrepnDataEigen$Time...ms..3, y = s7TrepnDataEigen$Memory.Usage..KB..App, xlab = 'Zeit in min', ylab = 'RAM in MB', col = 'white')
los7TrepnEigenMemoryApp <- loess(s7TrepnDataEigen$Memory.Usage..KB..App ~ s7TrepnDataEigen$Time...ms..3)
lines(los7TrepnEigenMemoryApp, col = 'red')
dev.off()

# RS-Data
s7TrepnDataRS <- read.csv(file = "S7/preprocessed/experiment-trepn-rs.csv")
s7TrepnDataRS$Time...ms. <- s7TrepnDataRS$Time...ms./1000/60
s7TrepnDataRS$Time...ms..1 <- s7TrepnDataRS$Time...ms..1/1000/60
s7TrepnDataRS$Time...ms..2 <- s7TrepnDataRS$Time...ms..2/1000/60
s7TrepnDataRS$Time...ms..3 <- s7TrepnDataRS$Time...ms..3/1000/60
# einzel plots
jpeg("plots/s7Trepn-rs-cpuload.jpg")
plot(x = s7TrepnDataRS$Time...ms..2, y = s7TrepnDataRS$CPU.Load...., xlab = 'Zeit in min', ylab = 'CPU-Auslastung in %', col = 'white')
los7TrepnRSCPUL <- loess(s7TrepnDataRS$CPU.Load.... ~ s7TrepnDataRS$Time...ms..2)
lines(los7TrepnRSCPUL, col = 'red')
dev.off()
s7TrepnDataRS$Memory.Usage..KB. <- s7TrepnDataRS$Memory.Usage..KB./1024
jpeg("plots/s7Trepn-rs-memory.jpg")
plot(x = s7TrepnDataRS$Time...ms..3, y = s7TrepnDataRS$Memory.Usage..KB., xlab = 'Zeit in min', ylab = 'RAM in MB', col = 'white')
los7TrepnRSMemory <- loess(s7TrepnDataRS$Memory.Usage..KB. ~ s7TrepnDataRS$Time...ms..3)
lines(los7TrepnRSMemory, col = 'red')
dev.off()
s7TrepnDataRS$Memory.Usage..KB..App <- s7TrepnDataRS$Memory.Usage..KB..App/1024
jpeg("plots/s7Trepn-rs-memory-app.jpg")
plot(x = s7TrepnDataRS$Time...ms..3, y = s7TrepnDataRS$Memory.Usage..KB..App, xlab = 'Zeit in min', ylab = 'RAM in MB', col = 'white')
los7TrepnRSMemoryApp <- loess(s7TrepnDataRS$Memory.Usage..KB..App ~ s7TrepnDataRS$Time...ms..3)
lines(los7TrepnRSMemoryApp, col = 'red')
dev.off()

# RS und Eigen
jpeg("plots/s7Trepn-eigen-rs-cpuload.jpg")
plot(x = s7TrepnDataEigen$Time...ms..2, y = s7TrepnDataEigen$CPU.Load...., xlab = 'Zeit in min', ylab = 'CPU-Auslastung in %', col = 'white')
lines(los7TrepnEigenCPUL, col = 'red')
lines(los7TrepnRSCPUL, col = 'blue')
dev.off()
jpeg("plots/s7Trepn-eigen-rs-memory.jpg")
plot(x = s7TrepnDataEigen$Time...ms..3, y = s7TrepnDataEigen$Memory.Usage..KB., xlab = 'Zeit in min', ylab = 'RAM in MB', col = 'white')
lines(los7TrepnEigenMemory, col = 'red')
lines(los7TrepnRSMemory, col = 'blue')
dev.off()
jpeg("plots/s7Trepn-eigen-rs-memory-app.jpg")
plot(x = s7TrepnDataEigen$Time...ms..3, y = s7TrepnDataEigen$Memory.Usage..KB..App, xlab = 'Zeit in min', ylab = 'RAM in MB', col = 'white')
lines(los7TrepnEigenMemoryApp, col = 'red')
lines(los7TrepnRSMemoryApp, col = 'blue')
dev.off()


# ---------------------------------
#   j5adb

# Eigen
j5ADBEigenPath <- read.csv(file = "J5/preprocessed/path-eigen.csv")
j5ADBEigenMatmul <- read.csv(file = "J5/preprocessed/matmul-eigen.csv")
j5ADBEigenConv <- read.csv(file = "J5/preprocessed/conv-eigen.csv")
j5ADBEigenPath$PathTime <- j5ADBEigenPath$PathTime*1000
# einzel plots
# path
jpeg("plots/j5ADB-eigen-path.jpg")
plot(x = row.names(j5ADBEigenPath), y = j5ADBEigenPath$PathTime, xlab = 'Aufeinanderfolgender Pfad', ylab = 'Ausführungszeit in ms', col = 'white')
loj5ADBEigenPath <- loess(j5ADBEigenPath$PathTime ~ row.names(j5ADBEigenPath))
lines(loj5ADBEigenPath, col = 'red')
dev.off()
# matmul
dfj5Matmul2048Eigen <- j5ADBEigenMatmul[c(TRUE,rep(FALSE,1)), ]
dfj5Matmul1024Eigen <- j5ADBEigenMatmul[c(rep(FALSE,1), TRUE), ]
dfj5Matmul2048Eigen$execute_time <- dfj5Matmul2048Eigen$execute_time*1000
dfj5Matmul1024Eigen$execute_time <- dfj5Matmul1024Eigen$execute_time*1000
jpeg("plots/j5ADB-eigen-matmul-2048.jpg")
plot(x = row.names(dfj5Matmul2048Eigen), y = dfj5Matmul2048Eigen$execute_time, xlab = 'Aufeinanderfolgendes Matmul', ylab = 'Ausführungszeit in ms', col = 'white')
loj5ADBEigenMatmul2048 <- loess(dfj5Matmul2048Eigen$execute_time ~ row.names(dfj5Matmul2048Eigen))
lines(loj5ADBEigenMatmul2048, col = 'red')
dev.off()
jpeg("plots/j5ADB-eigen-matmul-1024.jpg")
plot(x = row.names(dfj5Matmul1024Eigen), y = dfj5Matmul1024Eigen$execute_time, xlab = 'Aufeinanderfolgendes Matmul', ylab = 'Ausführungszeit in ms', col = 'white')
loj5ADBEigenMatmul1024 <- loess(dfj5Matmul1024Eigen$execute_time ~ row.names(dfj5Matmul1024Eigen))
lines(loj5ADBEigenMatmul1024, col = 'red')
dev.off()
jpeg("plots/j5ADB-eigen-matmul-hist-2048.jpg")
hist(dfj5Matmul2048Eigen$execute_time, xlab = 'Ausführungszeit in ms', ylab = 'Anzahl Vorkommen', main = "Histogramm: (1,2048)x(2048,1024)")
dev.off()
jpeg("plots/j5ADB-eigen-matmul-hist-1024.jpg")
hist(dfj5Matmul1024Eigen$execute_time, xlab = 'Ausführungszeit in ms', ylab = 'Anzahl Vorkommen', main = "Histogramm: (1,1024)x(1024,1008)")
dev.off()
#conv
# ggf. histogramme?

# RS
j5ADBrsPath <- read.csv(file = "J5/preprocessed/path-rs.csv")
j5ADBrsMatmul <- read.csv(file = "J5/preprocessed/matmul-rs.csv")
j5ADBrsConv <- read.csv(file = "J5/preprocessed/conv-rs.csv")
# einzel plots
#path
jpeg("plots/j5ADB-rs-path.jpg")
plot(x = row.names(j5ADBrsPath), y = j5ADBrsPath$PathTime, xlab = 'Aufeinanderfolgender Pfad', ylab = 'Ausführungszeit in ms', col = 'white')
loj5ADBrsPath <- loess(j5ADBrsPath$PathTime ~ row.names(j5ADBrsPath))
lines(loj5ADBrsPath, col = 'red')
dev.off()
#matmul
dfj5Matmul2048RS <- j5ADBrsMatmul[c(TRUE,rep(FALSE,1)), ]
dfj5Matmul1024RS <- j5ADBrsMatmul[c(rep(FALSE,1), TRUE), ]
dfj5Matmul2048RS$execute_time <- dfj5Matmul2048RS$execute_time*1000
dfj5Matmul1024RS$execute_time <- dfj5Matmul1024RS$execute_time*1000
jpeg("plots/j5ADB-rs-matmul-2048.jpg")
plot(x = row.names(dfj5Matmul2048RS), y = dfj5Matmul2048RS$execute_time, xlab = 'Aufeinanderfolgendes Matmul', ylab = 'Ausführungszeit in ms', col = 'white')
loj5ADBrsMatmul2048 <- loess(dfj5Matmul2048RS$execute_time ~ row.names(dfj5Matmul2048RS))
lines(loj5ADBrsMatmul2048, col = 'red')
dev.off()
jpeg("plots/j5ADB-rs-matmul-1024.jpg")
plot(x = row.names(dfj5Matmul1024RS), y = dfj5Matmul1024RS$execute_time, xlab = 'Aufeinanderfolgendes Matmul', ylab = 'Ausführungszeit in ms', col = 'white')
loj5ADBrsMatmul1024 <- loess(dfj5Matmul1024RS$execute_time ~ row.names(dfj5Matmul1024RS))
lines(loj5ADBrsMatmul1024, col = 'red')
dev.off()
jpeg("plots/j5ADB-rs-matmul-hist-2048.jpg")
hist(dfj5Matmul2048RS$execute_time, xlab = 'Ausführungszeit in ms', ylab = 'Anzahl Vorkommen', main = "Histogramm: (1,2048)x(2048,1024)")
dev.off()
jpeg("plots/j5ADB-rs-matmul-hist-1024.jpg")
hist(dfj5Matmul1024RS$execute_time, xlab = 'Ausführungszeit in ms', ylab = 'Anzahl Vorkommen', main = "Histogramm: (1,1024)x(1024,1008)")
dev.off()
#conv
# ggf. histogramme?

# ---------------------------------
#   s7adb
# Eigen
s7ADBEigenPath <- read.csv(file = "S7/preprocessed/path-eigen.csv")
s7ADBEigenMatmul <- read.csv(file = "S7/preprocessed/matmul-eigen.csv")
s7ADBEigenConv <- read.csv(file = "S7/preprocessed/conv-eigen.csv")
s7ADBEigenPath$PathTime <- s7ADBEigenPath$PathTime*1000
# einzel plots
# path
jpeg("plots/s7ADB-eigen-path.jpg")
plot(x = row.names(s7ADBEigenPath), y = s7ADBEigenPath$PathTime, xlab = 'Aufeinanderfolgender Pfad', ylab = 'Ausführungszeit in ms', col = 'white')
los7ADBEigenPath <- loess(s7ADBEigenPath$PathTime ~ row.names(s7ADBEigenPath))
lines(los7ADBEigenPath, col = 'red')
dev.off()
# matmul
dfs7Matmul2048Eigen <- s7ADBEigenMatmul[c(TRUE,rep(FALSE,1)), ]
dfs7Matmul1024Eigen <- s7ADBEigenMatmul[c(rep(FALSE,1), TRUE), ]
dfs7Matmul2048Eigen$execute_time <- dfs7Matmul2048Eigen$execute_time*1000
dfs7Matmul1024Eigen$execute_time <- dfs7Matmul1024Eigen$execute_time*1000
jpeg("plots/s7ADB-eigen-matmul-2048.jpg")
plot(x = row.names(dfs7Matmul2048Eigen), y = dfs7Matmul2048Eigen$execute_time, xlab = 'Aufeinanderfolgendes Matmul', ylab = 'Ausführungszeit in ms', col = 'white')
los7ADBEigenMatmul2048 <- loess(dfs7Matmul2048Eigen$execute_time ~ row.names(dfs7Matmul2048Eigen))
lines(los7ADBEigenMatmul2048, col = 'red')
dev.off()
jpeg("plots/s7ADB-eigen-matmul-1024.jpg")
plot(x = row.names(dfs7Matmul1024Eigen), y = dfs7Matmul1024Eigen$execute_time, xlab = 'Aufeinanderfolgendes Matmul', ylab = 'Ausführungszeit in ms', col = 'white')
los7ADBEigenMatmul1024 <- loess(dfs7Matmul1024Eigen$execute_time ~ row.names(dfs7Matmul1024Eigen))
lines(los7ADBEigenMatmul1024, col = 'red')
dev.off()
jpeg("plots/s7ADB-eigen-matmul-hist-2048.jpg")
hist(dfs7Matmul2048Eigen$execute_time, xlab = 'Ausführungszeit in ms', ylab = 'Anzahl Vorkommen', main = "Histogramm: (1,2048)x(2048,1024)")
dev.off()
jpeg("plots/s7ADB-eigen-matmul-hist-1024.jpg")
hist(dfs7Matmul1024Eigen$execute_time, xlab = 'Ausführungszeit in ms', ylab = 'Anzahl Vorkommen', main = "Histogramm: (1,1024)x(1024,1008)")
dev.off()
#conv
# ggf. histogramme?

# RS
s7ADBrsPath <- read.csv(file = "S7/preprocessed/path-rs.csv")
s7ADBrsMatmul <- read.csv(file = "S7/preprocessed/matmul-rs.csv")
s7ADBrsConv <- read.csv(file = "S7/preprocessed/conv-rs.csv")
# einzel plots
#path
jpeg("plots/s7ADB-rs-path.jpg")
plot(x = row.names(s7ADBrsPath), y = s7ADBrsPath$PathTime, xlab = 'Aufeinanderfolgender Pfad', ylab = 'Ausführungszeit in ms', col = 'white')
los7ADBrsPath <- loess(s7ADBrsPath$PathTime ~ row.names(s7ADBrsPath))
lines(los7ADBrsPath, col = 'red')
dev.off()
#matmul
dfs7Matmul2048RS <- s7ADBrsMatmul[c(TRUE,rep(FALSE,1)), ]
dfs7Matmul1024RS <- s7ADBrsMatmul[c(rep(FALSE,1), TRUE), ]
dfs7Matmul2048RS$execute_time <- dfs7Matmul2048RS$execute_time*1000
dfs7Matmul1024RS$execute_time <- dfs7Matmul1024RS$execute_time*1000
jpeg("plots/s7ADB-rs-matmul-2048.jpg")
plot(x = row.names(dfs7Matmul2048RS), y = dfs7Matmul2048RS$execute_time, xlab = 'Aufeinanderfolgendes Matmul', ylab = 'Ausführungszeit in ms', col = 'white')
los7ADBrsMatmul2048 <- loess(dfs7Matmul2048RS$execute_time ~ row.names(dfs7Matmul2048RS))
lines(los7ADBrsMatmul2048, col = 'red')
dev.off()
jpeg("plots/s7ADB-rs-matmul-1024.jpg")
plot(x = row.names(dfs7Matmul1024RS), y = dfs7Matmul1024RS$execute_time, xlab = 'Aufeinanderfolgendes Matmul', ylab = 'Ausführungszeit in ms', col = 'white')
los7ADBrsMatmul1024 <- loess(dfs7Matmul1024RS$execute_time ~ row.names(dfs7Matmul1024RS))
lines(los7ADBrsMatmul1024, col = 'red')
dev.off()
jpeg("plots/s7ADB-rs-matmul-hist-2048.jpg")
hist(dfs7Matmul2048RS$execute_time, xlab = 'Ausführungszeit in ms', ylab = 'Anzahl Vorkommen', main = "Histogramm: (1,2048)x(2048,1024)")
dev.off()
jpeg("plots/s7ADB-rs-matmul-hist-1024.jpg")
hist(dfs7Matmul1024RS$execute_time, xlab = 'Ausführungszeit in ms', ylab = 'Anzahl Vorkommen', main = "Histogramm: (1,1024)x(1024,1008)")
dev.off()
#conv
# ggf. histogramme?


# -----------------------------------------
# RS + Eigen + beide smartphones
#install.packages("plotly")
library(plotly)

# conv
dfj5EigenConvFilterCount16 <- j5ADBEigenConv[j5ADBEigenConv$out_depth == 16,]
dfj5EigenConvFilterCount32 <- j5ADBEigenConv[j5ADBEigenConv$out_depth == 32,]
dfj5EigenConvFilterCount48 <- j5ADBEigenConv[j5ADBEigenConv$out_depth == 48,]
dfj5EigenConvFilterCount64 <- j5ADBEigenConv[j5ADBEigenConv$out_depth == 64,]
dfj5EigenConvFilterCount96 <- j5ADBEigenConv[j5ADBEigenConv$out_depth == 96,]
dfj5EigenConvFilterCount128 <- j5ADBEigenConv[j5ADBEigenConv$out_depth == 128,]
dfj5EigenConvFilterCount192 <- j5ADBEigenConv[j5ADBEigenConv$out_depth == 192,]
dfj5EigenConvFilterCount204 <- j5ADBEigenConv[j5ADBEigenConv$out_depth == 204,]
dfj5rsConvFilterCount16 <- j5ADBrsConv[j5ADBrsConv$out_depth == 16,]
dfj5rsConvFilterCount32 <- j5ADBrsConv[j5ADBrsConv$out_depth == 32,]
dfj5rsConvFilterCount48 <- j5ADBrsConv[j5ADBrsConv$out_depth == 48,]
dfj5rsConvFilterCount64 <- j5ADBrsConv[j5ADBrsConv$out_depth == 64,]
dfj5rsConvFilterCount96 <- j5ADBrsConv[j5ADBrsConv$out_depth == 96,]
dfj5rsConvFilterCount128 <- j5ADBrsConv[j5ADBrsConv$out_depth == 128,]
dfj5rsConvFilterCount192 <- j5ADBrsConv[j5ADBrsConv$out_depth == 192,]
dfj5rsConvFilterCount204 <- j5ADBrsConv[j5ADBrsConv$out_depth == 204,]
dfs7EigenConvFilterCount16 <- s7ADBEigenConv[s7ADBEigenConv$out_depth == 16,]
dfs7EigenConvFilterCount32 <- s7ADBEigenConv[s7ADBEigenConv$out_depth == 32,]
dfs7EigenConvFilterCount48 <- s7ADBEigenConv[s7ADBEigenConv$out_depth == 48,]
dfs7EigenConvFilterCount64 <- s7ADBEigenConv[s7ADBEigenConv$out_depth == 64,]
dfs7EigenConvFilterCount96 <- s7ADBEigenConv[s7ADBEigenConv$out_depth == 96,]
dfs7EigenConvFilterCount128 <- s7ADBEigenConv[s7ADBEigenConv$out_depth == 128,]
dfs7EigenConvFilterCount192 <- s7ADBEigenConv[s7ADBEigenConv$out_depth == 192,]
dfs7EigenConvFilterCount204 <- s7ADBEigenConv[s7ADBEigenConv$out_depth == 204,]
dfs7rsConvFilterCount16 <- s7ADBrsConv[s7ADBrsConv$out_depth == 16,]
dfs7rsConvFilterCount32 <- s7ADBrsConv[s7ADBrsConv$out_depth == 32,]
dfs7rsConvFilterCount48 <- s7ADBrsConv[s7ADBrsConv$out_depth == 48,]
dfs7rsConvFilterCount64 <- s7ADBrsConv[s7ADBrsConv$out_depth == 64,]
dfs7rsConvFilterCount96 <- s7ADBrsConv[s7ADBrsConv$out_depth == 96,]
dfs7rsConvFilterCount128 <- s7ADBrsConv[s7ADBrsConv$out_depth == 128,]
dfs7rsConvFilterCount192 <- s7ADBrsConv[s7ADBrsConv$out_depth == 192,]
dfs7rsConvFilterCount204 <- s7ADBrsConv[s7ADBrsConv$out_depth == 204,]
jpeg("plots/aa-paper-filteranzahl-1.jpg")
convData <- data.frame(
  Category <- c("016","016","016","016",
                "032","032","032","032",
                "048","048","048","048", 
                "064","064","064","064"),
  SubCategory <- c("j5eigen","j5rs","s7eigen","s7rs", "j5eigen","j5rs","s7eigen","s7rs", "j5eigen","j5rs","s7eigen","s7rs", "j5eigen","j5rs","s7eigen","s7rs"),
  filterdata <- c(mean(dfj5EigenConvFilterCount16$execute_time), mean(dfj5rsConvFilterCount16$execute_time), mean(dfs7EigenConvFilterCount16$execute_time), mean(dfs7rsConvFilterCount16$execute_time), mean(dfj5EigenConvFilterCount32$execute_time), mean(dfj5rsConvFilterCount32$execute_time), mean(dfs7EigenConvFilterCount32$execute_time), mean(dfs7rsConvFilterCount32$execute_time), mean(dfj5EigenConvFilterCount48$execute_time), mean(dfj5rsConvFilterCount48$execute_time), mean(dfs7EigenConvFilterCount48$execute_time), mean(dfs7rsConvFilterCount48$execute_time), mean(dfj5EigenConvFilterCount64$execute_time), mean(dfj5rsConvFilterCount64$execute_time), mean(dfs7EigenConvFilterCount64$execute_time), mean(dfs7rsConvFilterCount64$execute_time))
)

colnames(convData)<-c("Filterzahl","subcategory","Ausführungszeit")
ggplot(data = convData, aes(Filterzahl, Ausführungszeit)) + 
  geom_bar(aes(fill = subcategory, color=Filterzahl), position = "dodge", stat="identity") +
  scale_color_manual(values=c(rep("black", 4))) +
  theme(legend.position="none", panel.background = element_rect(fill = '#efefef', colour = 'white'))
dev.off()
jpeg("plots/aa-paper-filteranzahl-2.jpg")
convData <- data.frame(
  Category <- c("096","096","096","096",
                "128","128","128","128",
                "194","194","194","194",
                "204","204","204","204"),
  SubCategory <- SubCategory <- c("j5eigen","j5rs","s7eigen","s7rs", "j5eigen","j5rs","s7eigen","s7rs", "j5eigen","j5rs","s7eigen","s7rs", "j5eigen","j5rs","s7eigen","s7rs"),
  filterdata <- c(mean(dfj5EigenConvFilterCount96$execute_time), mean(dfj5rsConvFilterCount96$execute_time), mean(dfs7EigenConvFilterCount96$execute_time), mean(dfs7rsConvFilterCount96$execute_time), mean(dfj5EigenConvFilterCount128$execute_time), mean(dfj5rsConvFilterCount128$execute_time), mean(dfs7EigenConvFilterCount128$execute_time), mean(dfs7rsConvFilterCount128$execute_time), mean(dfj5EigenConvFilterCount192$execute_time), mean(dfj5rsConvFilterCount192$execute_time), mean(dfs7EigenConvFilterCount192$execute_time), mean(dfs7rsConvFilterCount192$execute_time), mean(dfj5EigenConvFilterCount204$execute_time), mean(dfj5rsConvFilterCount204$execute_time), mean(dfs7EigenConvFilterCount204$execute_time), mean(dfs7rsConvFilterCount204$execute_time))
)

colnames(convData)<-c("Filterzahl","subcategory","Ausführungszeit")
ggplot(data = convData, aes(Filterzahl, Ausführungszeit)) + 
  geom_bar(aes(fill = subcategory, color=Filterzahl), position = "dodge", stat="identity") +
  scale_color_manual(values=c(rep("black", 4))) +
  theme(legend.position="none", panel.background = element_rect(fill = '#efefef', colour = 'white'))
dev.off()

# matmul
jpeg("plots/aa-paper-matrizengroesse.jpg")
matmulData <- data.frame(
  Category <- c("(1,1024)x(1024,1008)","(1,1024)x(1024,1008)","(1,1024)x(1024,1008)","(1,1024)x(1024,1008)",
                "(1,2048)x(2048,1024)","(1,2048)x(2048,1024)","(1,2048)x(2048,1024)","(1,2048)x(2048,1024)"),
  SubCategory <- c("j5eigen","j5rs","s7eigen","s7rs","j5eigen","j5rs","s7eigen","s7rs"),
  filterdata <- c(mean(dfj5Matmul1024Eigen$execute_time), mean(dfj5Matmul1024RS$execute_time), mean(dfs7Matmul1024Eigen$execute_time), mean(dfs7Matmul1024RS$execute_time),
                  mean(dfj5Matmul2048Eigen$execute_time), mean(dfj5Matmul2048RS$execute_time), mean(dfs7Matmul2048Eigen$execute_time), mean(dfs7Matmul2048RS$execute_time))
)

colnames(matmulData)<-c("Matrixgröße","subcategory","Ausführungszeit")
ggplot(data = matmulData, aes(Matrixgröße, Ausführungszeit)) + 
  geom_bar(aes(fill = subcategory, color=Matrixgröße), position = "dodge", stat="identity") +
  scale_color_manual(values=c(rep("black", 4))) +
  theme(legend.position="none", panel.background = element_rect(fill = '#efefef', colour = 'white'))
dev.off()

# 
convOutputTensor <- j5ADBEigenConv[c("out_rows", "out_cols", "out_depth")]
convOutputTensorUnique <- unique(convOutputTensor)
convOutputTensorMatMulOps <- convOutputTensorUnique$out_rows * convOutputTensorUnique$out_cols * convOutputTensorUnique$out_depth
