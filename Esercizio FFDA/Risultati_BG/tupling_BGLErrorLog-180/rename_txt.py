import os

for i in range (1,408):
	os.rename("tuple_"+str(i), "tuple_"+str(i)+".txt")