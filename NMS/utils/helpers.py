import time
from .web_methods import HttpHelper

__author__ = 'edx'

def get_num_entries(data):
    total = 0
    for i in data:
        try:
            int(i)
            total += 1
        except:
            break
    return total

def get_matrix_data(data, cols, total):
    res_tupled=[]
    for i in range(0,cols):#dividir el resultado por cada coluna de la tabla
                ini = i * total
                fin = ini + total
                res_tupled.append(data[ini:fin])
    return res_tupled

def get_data_reordered(table):
    cols = len(table[0])
    rows = len(table)
    #print("COLUMS: %d ROWS: %d" % (cols,rows))
    data_array = []
    for c in range(0,cols):
        maped = []
        for r in range(0,rows):
            try:
                maped.append(table[r][c])
            except:
                maped.append(0)
        data_array.append(maped)
    return data_array