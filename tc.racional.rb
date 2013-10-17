require "./racional.rb"
require "test/unit"

class Test_Fraccion < Test::Unit::TestCase
        def test_simple
                assert_equal( "(5/3)", Fraccion.new(5,3).to_s )		#Comprobamos que inicializa bien
        end
        
        def test_operaciones
                assert_equal( "(2/3)", (Fraccion.new(1, 3) + Fraccion.new(1, 3)).to_s)	#Suma con el mismo denominador
                assert_equal( "(5/6)", (Fraccion.new(1, 2) + Fraccion.new(1, 3)).to_s)	#Suma con distinto denominador

                assert_equal( "(2/3)", (Fraccion.new(4, 3) - Fraccion.new(2, 3)).to_s)	#Resta con el mismo denominador
                assert_equal( "(1/6)", (Fraccion.new(1, 2) - Fraccion.new(1, 3)).to_s)	#Resta con distinto denominador
              
                assert_equal( "(3/10)", (Fraccion.new(1, 5) * Fraccion.new(3, 2)).to_s)	#Multiplicacion
               
                assert_equal( "(3/4)", (Fraccion.new(1, 2).div(Fraccion.new(2, 3))).to_s)	#Division
        end
        
end