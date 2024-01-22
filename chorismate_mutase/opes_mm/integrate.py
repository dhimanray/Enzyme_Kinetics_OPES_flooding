import numpy as np

stateA_min_d1 = 3.1
stateA_max_d1 = 4.3
stateA_min_t5 = 0.0
stateA_max_t5 = 0.8

stateB_min_d1 = 3.1
stateB_max_d1 = 3.6
stateB_min_t5 = -0.7
stateB_max_t5 = 0.0

l = np.loadtxt('fes_2d')
kT = 2.4852
stateA_P = 0.0
stateB_P = 0.0
for i in range(len(l)):
    if l[i,0] > stateA_min_d1 and l[i,0] < stateA_max_d1 and l[i,1] > stateA_min_t5 and l[i,1] < stateA_max_t5:
        stateA_P += np.exp(-l[i,2]/kT)
    if l[i,0] > stateB_min_d1 and l[i,0] < stateB_max_d1 and l[i,1] > stateB_min_t5 and l[i,1] < stateB_max_t5:
        stateB_P += np.exp(-l[i,2]/kT)

deltaF = -kT*np.log(stateB_P/stateA_P)

print('dF = ',deltaF,' kJ/mol ','d_prob = ',stateB_P/stateA_P)
