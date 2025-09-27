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
    
#conteggio troncamenti

trunc_countBGL = 0
nodiBGL = pd.DataFrame()

for t in istanzeBGL['Tupla'].unique():
    if t != 407:
        mask = (istanzeBGL['Tupla']==t)
        mask_next = (istanzeBGL['Tupla']==t+1)
        istanze_filtrate_bgl = istanzeBGL.loc[mask]
        istanze_filtrate_next_bgl = istanzeBGL.loc[mask_next]
        if (istanze_filtrate_bgl.loc[istanze_filtrate_bgl.shape[0]-1, :].Node== istanze_filtrate_next_bgl.loc[0, :].Node):
            trunc_countBGL = trunc_countBGL + 1
            print('Troncamento '+ str(trunc_countBGL)+ ': tupla '+str(t)+' - tupla '+str(t+1) + '--- Nodo: '+ str(istanze_filtrate_bgl.loc[istanze_filtrate_bgl.shape[0]-1, :].Node))
            nodiBGL = nodiBGL._append(istanze_filtrate_bgl.loc[istanze_filtrate_bgl.shape[0]-1, :])
    else:
        print("il file è finito")

print('Troncamenti : ' + str(trunc_countBGL))
print('Percentuale di troncamenti: '+str(trunc_countBGL/407*100)+' %')
