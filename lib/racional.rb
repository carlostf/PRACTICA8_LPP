class Racional
attr_reader :num,:den

include Comparable
include Enumerable

def mcd(a,b)
d = a.abs, b.abs
while d.min != 0
d = d.min, d.max%d.min
end
d.max
end

private :mcd

def initialize(num, den)
max = mcd(num, den)
@num = num / max
@den = den / max
end


def imprimirRacional
"#{@num}/#{@den}"
end

def imprimirFlotante
@num.to_f/@den.to_f
end

def ==(other)
if (@num == other.num) && (@den == other.den)
true
else
false
end
end

def + (other)
Racional.new(@num* other.den + other.num*@den, @den * other.den)
end

def - (other)
Racional.new(@num* other.den - other.num*@den, @den * other.den)
end

def * (other)
Racional.new(@num* other.num, @den * other.den)
end

def / (other)
Racional.new(@num* other.den, @den * other.num)
end

def % (other)
Racional.new((imprimirRacional % other.imprimirRacional*1000).to_i, 1000)
end

def <=> (other)
imprimirRacional <=> other.imprimirRacional
end

def abs
if (@num < 0) ^ (@den < 0)
if @num < 0
Racional.new(@num*-1, @den)
else
Racional.new(@num, @den*-1)
end
elsif (@num < 0) && (@den < 0)
Racional.new(@num*-1, @den*-1)
else
Racional.new(@num, @den)
end
end

def reciprocal
Racional.new(@den, @num)
end

def -@
Racional.new(@num*-1, @den)
end

end
