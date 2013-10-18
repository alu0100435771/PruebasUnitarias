# Implementar en este fichero la clase para crear objetos racionales

require "./gcd.rb"

class Fraccion

  attr_accessor :denominador, :numerador

  def initialize
    #Controlando que los numeros sean enteros, y que el denominador no sea 0
    raise ArgumentError, 'El denominador es 0' unless numerador != 0
    raise ArgumentError, 'El denominador no es entero' unless denominador.is_a? Integer
    raise ArgumentEirror, 'El numerador no es entero' unless numearador.is_a? Integer
    
  end
   
  def minimizar #Construcción de la fracción
    comunDiv = gcd(numerador, denominador)
    @numerador = @numerador/comunDiv
    @denominador = @denoiminador/comunDiv
  end

  def to_s
    "#{numerador}/#{denominador}"  
  end

  def suma(racional)
    resultado = Fraccion.new(@numerador*racional.denominador + @denominador*racional.numerador, @denominador*racional.denominador)
  end

  def resta(racional)
    resultado = Fraccion.new(@numerador*racional.denominador - @denominador*racional.numerador, @denominador*racional.denominador)
  end

  def producto(racional)
    resultado = Fraccion.new(@numerador*racional.numerador, @denominador*racional.denominador)
  end

  def division(racional)
    resultado = Fraccion.new(@numerador*racional.denominador, @denominador*racional.numerador)
  end

end
