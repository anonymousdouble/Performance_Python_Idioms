x_0 = list(range(1,317))
x_1 = list(range(1,317))
l = dict()
for e_0 in x_0:
    for e_1 in x_1:
        l[e_0 * 10000 + e_1]=e_0
print('len: ',len(l))
print('code is finished')