
#datF <- read.delim("BEB.NPIPB16.out", header=F, sep='')
datF <- read.delim("BEB.out", header=F, sep='')
datF$ProbSelection = datF$V5 + datF$V6

datF$color <- ifelse(round(datF$ProbSelection, digits = 2)>=0.90, "blue", "grey")
datF$color <- ifelse(round(datF$ProbSelection, digits = 2)>=0.95, "orange", datF$color)

datF$pointSize <- ifelse(round(datF$ProbSelection, digits = 2)>=0.90, 3, 2)
datF$pointSize <- ifelse(round(datF$ProbSelection, digits = 2)>=0.95, 4, datF$pointSize)

datF$lineSize <- ifelse(round(datF$ProbSelection, digits = 2)>=0.90, 3, 2)
datF$lineSize <- ifelse(round(datF$ProbSelection, digits = 2)>=0.95, 4, datF$pointSize)


pdf("probSelectiveAA.NPIP.1.pdf", width = 24, height = 4, useDingbats=F)
op <- par(ps=10)
cex=3
cexDomain=3

dat = datF[1:240,]
par(mar=c(5, 5, 1, 0))
plot(x=dat$V1, y=dat$ProbSelection, col=dat$color, type = "n", ylim=c(-0.15,  max(dat$ProbSelection)+0.05), axes=F, ann=F)
axis(1, cex.axis=cex, at=seq(10,1000,10), labels=seq(10,1000,10))
axis(2, at=pretty(c(0, max(dat$ProbSelection))), cex.axis=cex, line = -1)
#mtext("Prob(dN/dS>1)", side=2, line=3, cex=cex)
mtext("Amino acid position", side=1, line=3, cex=cex)
segments(x0=dat$V1, y0=dat$ProbSelection, y1=0, col=dat$color, lwd=dat$lineSize)
points(x=dat$V1, y=dat$ProbSelection, pch=16, col=dat$color, bg=dat$color, cex=dat$pointSize)

dev.off()


pdf("probSelectiveAA.NPIP.2.pdf", width = 24, height = 4, useDingbats=F)
op <- par(ps=10)
cex=3
cexDomain=3

dat = datF[100:160,]
par(mar=c(5, 5, 1, 0))
plot(x=dat$V1, y=dat$ProbSelection, col=dat$color, type = "n", ylim=c(-0.15, max(dat$ProbSelection)+0.05), axes=F, ann=F)
axis(1, cex.axis=cex, at=seq(10,1000,10), labels=seq(10,1000,10))
axis(2, at=pretty(c(0, max(dat$ProbSelection))), cex.axis=cex, line = -1)
#mtext("Prob(dN/dS>1)", side=2, line=3, cex=cex)
mtext("Amino acid position", side=1, line=3, cex=cex)
segments(x0=dat$V1, y0=dat$ProbSelection, y1=0, col=dat$color, lwd=dat$lineSize)
points(x=dat$V1, y=dat$ProbSelection, pch=16, col=dat$color, bg=dat$color, cex=dat$pointSize)

dev.off()


pdf("probSelectiveAA.NPIP.3.pdf", width = 24, height = 4, useDingbats=F)
op <- par(ps=10)
cex=3
cexDomain=3

dat = datF[140:240,]
par(mar=c(5, 5, 1, 0))
plot(x=dat$V1, y=dat$ProbSelection, col=dat$color, type = "n", ylim=c(-0.15, max(dat$ProbSelection)+0.05), axes=F, ann=F)
axis(1, cex.axis=cex, at=seq(10,1500,10), labels=seq(10,1500,10))
axis(2, at=pretty(c(0, max(dat$ProbSelection))), cex.axis=cex, line = -1)
#mtext("Prob(dN/dS>1)", side=2, line=3, cex=cex)
mtext("Amino acid position", side=1, line=3, cex=cex)
segments(x0=dat$V1, y0=dat$ProbSelection, y1=0, col=dat$color, lwd=dat$lineSize)
points(x=dat$V1, y=dat$ProbSelection, pch=16, col=dat$color, bg=dat$color, cex=dat$pointSize)

dev.off()

