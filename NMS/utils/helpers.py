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