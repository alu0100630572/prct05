# Implementar en este fichero la clase para crear objetos racionales
#! /bin/env ruby

class Fraccion
  
  attr_reader :num, :denom
  
  def initialize(num,denom)  	#Metodo que es llamado por el constructor
    @num, @denom = num,denom  
  end
  
  def to_s			#Metodo para pasasr a string el resultado
    "(#@num/#@denom)"
  end
  
  def +(other)			#Metodo para sumar 
    if (@denom == other.denom)
      Fraccion.new(@num + other.num, @denom)
    else
      resultado = Fraccion.new(@num*other.denom + @denom*other.num, @denom*other.denom)
      resultado.reducir
    end
  end
  
  def -(other)
    if (@denom == other.denom)
      Fraccion.new(@num - other.num, @denom)
    else
      resultado = Fraccion.new(@num*other.denom - @denom*other.num, @denom*other.denom)
      resultado.reducir
    end
  end
    
  
  def gcd(u, v)			#Calculamos el minimo
    u, v = u.abs, v.abs
    while v != 0
      u, v = v, u % v
    end
    u
  end
  
  def reducir
    comun_div = gcd(@num, @denom)
    @num = @num/comun_div
    @denom = @denom/comun_div
    Fraccion.new(@num,@denom)
  end
  
end

f1 = Fraccion.new(2,4)
f2 = Fraccion.new(2,6)
f3 = f1 - f2
puts f3.to_s