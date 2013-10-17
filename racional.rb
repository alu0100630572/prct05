# Implementar en este fichero la clase para crear objetos racionales
#! /bin/env ruby

require "./gcd.rb"

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
    else if (@denom != other.denom)

      
  end
  
  def
end
