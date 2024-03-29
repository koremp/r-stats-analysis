# t square

df <- c(1, 2, 8, 30)
x <- seq(-3, 3, by=0.01)
y <- dnorm(x)
t.1 <- dt(x, df=df[1])
t.2 <- dt(x, df=df[2])
t.8 <- dt(x, df=df[3])
t.30 <- dt(x, df=df[4])

#par(mfrow=c(2,2))
par(mfrow=c(1,1))
par(mar=c(4,2,2,2))
hist(b.4.mean, prob=T, xlim=c(0, 4), main="표본 크기 : 4", ylab="", xlab="", col="orange", border="red")
plot(x, y, type="l", lty=1, axes=F, xlab="x", ylab="", col="red")
axis(1)
lines(x, t.1, lty=4)
lines(x, t.2, lty=3)
lines(x, t.8, lty=2)
lines(x, t.30, lty=6)
legend("topright", paste("df :", df), lty=c(4, 3, 2, 6), cex=0.7)

