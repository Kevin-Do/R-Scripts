
#3D Plot
x <- seq(-1, 1, length = 101)
y <- seq(-1, 1, length = 101)
Z <- outer(x, x, function(x, y) (1-x^2-y^2))
Z
#Outer Object
persp(x=x ,y=x ,z=Z, theta = 45, ylab = "Time (Years)", xlab = "Concavity (Degrees)", zlab = "Intensity", col = rainbow(10))
