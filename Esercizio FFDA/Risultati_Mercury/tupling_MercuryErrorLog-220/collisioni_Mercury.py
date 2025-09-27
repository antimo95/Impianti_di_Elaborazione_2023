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

#conteggio collisioni

coll_countMerc = 0
collMerc = {}

for t in istanzeMerc['Tupla'].unique():
    if t != 493:
        mask = (istanzeMerc['Tupla']==t)
        istanze_filtrate = istanzeMerc.loc[mask]
        if (len(istanze_filtrate.Node.unique())>1):
            coll_countMerc = coll_countMerc+1
            print('Collisione -- tupla: '+ str(t))
            collMerc[t]=istanze_filtrate.Node.unique()
    else:
        print('File finito')
print('Collisioni : ' + str(coll_countMerc))
print('Percentuale di collisioni: '+str(coll_countMerc/493*100)+' %')
