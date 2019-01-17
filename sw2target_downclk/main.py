import math

wl = []

for i in range(0,127):
    a = int((50*pow(10,6)) /(440 * pow(2,(i-69)/12))/360)
    wl.append('when \"{0:08b}\" => TGT_CLK <= \"{1:026b}\";\n'.format(int(i), a))
#    print('when {0:08b} => TGT_CLK <= {1:26b};'.format(int(i),a))

for i in range(len(wl)):
    print("NOTE_NUM" + str(i) + ": " + wl[i],end="")

f = open('code.txt','w+')
f.writelines(wl)