#import delle librerie

import warnings
warnings.simplefilter(action='ignore', category=FutureWarning)
import pandas as pd

#lettura tuple

istanzeMerc=pd.DataFrame()
perc = 'C:/Users/luig.nuzzo/Desktop/Esercizio FFDA'

width = [10,9,3,100]

for i in range(1,494):
    doc=pd.read_fwf(perc+'/Risultati_Mercury/tupling_MercuryErrorLog-220/tuple_'+str(i)+'.txt', widths=width, names = ['Timestamp','Node','Subsystem','Message'])
    doc.insert(4, 'Tupla', str(i), True)
    istanzeMerc = pd.concat([istanzeMerc, doc])

istanzeMerc['Tupla']=pd.to_numeric(istanzeMerc['Tupla'])

#conteggio troncamenti

trunc_countMerc = 0
nodiMerc = pd.DataFrame()

for t in istanzeMerc['Tupla'].unique():
    if t != 493:
        mask = (istanzeMerc['Tupla']==t)
        mask_next = (istanzeMerc['Tupla']==t+1)
        istanze_filtrate = istanzeMerc.loc[mask]
        istanze_filtrate_next = istanzeMerc.loc[mask_next]
        if (istanze_filtrate.loc[istanze_filtrate.shape[0]-1, :].Node== istanze_filtrate_next.loc[0, :].Node):
            trunc_countMerc = trunc_countMerc + 1
            print('Troncamento : tupla '+str(t)+' - tupla '+str(t+1) +
                  '--- Nodo: '+ str(istanze_filtrate.loc[istanze_filtrate.shape[0]-1, :].Node))
            nodiMerc = nodiMerc._append(istanze_filtrate.loc[istanze_filtrate.shape[0]-1, :])
    else:
        print("il file è finito")

print('Troncamenti : ' + str(trunc_countMerc))
print('Percentuale di troncamenti: '+str(trunc_countMerc/493*100)+' %')

nodiMerc.groupby(by='Node').count().Timestamp.plot.bar(figsize=(7,5), ylabel='Num Troncamenti')
