require "./racional.rb"
require "test/unit"

class Test_Fraccion < Test::Unit::TestCase

  def setup
    @a = Fraccion.new(1,4)
    @b = Fraccion.new(1,4)
  end

  def test_suma
    r = @a.suma(@b) # Probando con valores declarador en el set up 
    assert r.numerador == 1 and r.denominador == 2
    @a.numerador = 1
    @a.denominador = 2
    r = @a.suma(@b) # Probando con nuevos valores para a
    assert r.numerador == 3 and r.numerador == 3
    @a.numerador = 0
    r = @a.suma(@b) #Probando con numerador 0 
    assert r.numerador == 1 and r.denominador == 4
  end
end
