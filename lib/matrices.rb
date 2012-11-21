require 'racional'

class Matriz
attr_accessor :filas,:colum, :matriz
#**************************** ENTEROS ********************************#

def initialize(m)
@filas = m.size
@colum = m[1].size
@matriz = m
end

# SUMA #
def + (other)
i=0
   aux = @matriz
while i < @filas
j=0
while j < @colum
aux[i][j] = aux[i][j] + other.matriz[i][j]
j += 1
end
i += 1
end
Matriz.new(aux)
end

# RESTA #
def - (other)
i=0
   aux = @matriz
while i < @filas
j=0
while j < @colum
aux[i][j] = aux[i][j] - other.matriz[i][j]
j += 1
end
i += 1
end
Matriz.new(aux)
end

# MULTIPLICACION #
def * (other)
i=0
   aux = [[10,10,10],[10,10,10],[10,10,10]]
while i < @filas
j=0
while j < other.colum
aux[i][j] = 0
k=0
while k < @colum
aux[i][j] = aux[i][j] + (matriz[i][k] * other.matriz[k][j])
k+=1
end
j += 1
end
i += 1
end
Matriz.new(aux)
end

#**************************** RACIONALES ********************************#

# SUMA #
def % (other)
i=0
   aux = @matriz
while i < @filas
j=0
while j < @colum
aux[i][j] = (Racional.construccion(aux[i][j]) + Racional.construccion(other.matriz[i][j])).imprimirRacional
j += 1
end
i += 1
end
Matriz.new(aux)
end

# MULTIPLICACION #
def / (other)
i=0
   aux = [[10,10,10],[10,10,10],[10,10,10]]
while i < @filas
j=0
while j < other.colum
aux[i][j] = 0
k=0
while k < @colum
aux[i][j] = aux[i][j] + (matriz[i][k] * other.matriz[k][j])
k+=1
end
aux[i][j] = (Racional.construccion(aux[i][j])).imprimirRacional
j += 1
end
i += 1
end
Matriz.new(aux)
end


end
