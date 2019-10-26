a = read.table("secher.txt", header=T)
names(a)

# First model of bwt~bpd
model1 = lm(bwt~bpd, data=a)
sum.model1 = summary(model1)
R2_1 = sum.model1$r.squared
f1 = sum.model1$fstatistic
p.value1 = pf(f1[1],f1[2],f1[3],lower.tail=F)
output1 = sprintf("For bwt~bpd: R2 = %f and p-value = %f", R2_1, p.value1)
cat(output1)
intercept1 = model1$coefficients[1]
slope1 = model1$coefficients[2]
output1 = sprintf(" slope=%f intercept=%f\n", slope1, intercept1)
cat(output1)
png("graph1.png")
plot(bwt~bpd, data=a)
abline(model1)
dev.off()

# Second model of bwt~ad
model2 = lm(bwt~ad, data=a)
sum.model2 = summary(model2)
R2_2 = sum.model2$r.squared
f2 = sum.model2$fstatistic
p.value2 = pf(f2[1],f2[2],f2[3],lower.tail=F)
output2 = sprintf("For bwt~ad: R2 = %f and p-value = %f", R2_2, p.value2)
cat(output2)
intercept2 = model2$coefficients[1]
slope2 = model2$coefficients[2]
output2 = sprintf(" slope = %f intercept = %f", slope2, intercept2)
cat(output2)
png("graph2.png")
plot(bwt~ad, data=a)
abline(model2)
dev.off()