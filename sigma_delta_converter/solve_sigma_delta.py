import math

T = 360
a = []
modsig = []

delta = 0
sigma = 0

for i in range(T):
    a.append(0.5 * math.sin(2 * math.pi * i / T) + 0.5)

print(a)
print("\n ---------------- \n")

for i in range(T):
    sigma += a[i] - delta
    if(sigma > 0):
        modsig.append(int(1))
    else:
        modsig.append(int(0))
    delta = modsig[-1]
    print(modsig[-1],end="")