#import delle librerie

import warnings
warnings.simplefilter(action='ignore', category=FutureWarning)
import pandas as pd

#lettura tuple

istanzeBGL=pd.DataFrame()
perc = 'C:/Users/luig.nuzzo/Desktop/Esercizio FFDA'

width = [10,10,8,100]

for i in range(1,408):
    doc=pd.read_fwf(perc+'/Risultati_BG/tupling_BGLErrorLog-180/tuple_'+str(i)+'.txt', widths=width, names = ['Timestamp','Node','Card','Message'])
    doc.loc[doc['Card'].str.contains('J18'),'Card type'] = 'I-O'
    doc.loc[~doc['Card'].str.contains('J18'),'Card type'] = 'computation'
    doc.insert(4, 'Tupla', str(i), True)
    istanzeBGL = pd.concat([istanzeBGL, doc])
    
istanzeBGL['Tupla']=pd.to_numeric(istanzeBGL['Tupla'])

#conteggio collisioni

coll_countBGL_cardtype = 0
collBGL_cardtype = {}

for t in istanzeBGL['Tupla'].unique():
    if t != 407:
        mask = (istanzeBGL['Tupla']==t)
        istanze_filtrate = istanzeBGL.loc[mask]
        if (len(istanze_filtrate['Card type'].unique())>1):
            coll_countBGL_cardtype = coll_countBGL_cardtype+1
            print('Collisione -- tupla: '+ str(t))
            collBGL_cardtype[t]=istanze_filtrate['Card type'].unique()
    else:
        print('File finito')
print('Collisioni : ' + str(coll_countBGL_cardtype))
print('Percentuale di collisioni: '+str(coll_countBGL_cardtype/407*100)+' %')
