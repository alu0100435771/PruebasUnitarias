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

  def test_resta
    @a.denominador = 2  
    r = @a.resta(@b) # Cambie denominador de a, para que no quede denominador = 0  
    assert r.numerador == 1 and r.denominador == 4
    @a.numerador = 3 
    @a.denominador = 7
    r = @a.resta(@b) # Probando con nuevos valores para a
    assert r.numerador == 5 and r.numerador == 28
  end

  def test_producto
    r = @a.producto(@b) #Valores del setup
    assert r.numerador == 1 and r.denominador == 16
    @a.numerador = 3
    @a.denominador = 7
    r = @a.producto(@b) #Nuevos valores
    assert r.numerador == 3 and r.denominador == 28
  end

  def test_divison
    r = @a.division(@b) #Probando con los valores del set up
    assert r.numerador == 1 and r.denominador == 1
    @a.denominador = 2
    r = @a.division(@b) #Nuevo valor al denominador
    assert r.numerador == 2 and r.denominador == 4
  end

end
