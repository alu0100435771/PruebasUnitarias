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

  def suma(operador)
    resultado = Fraccion.new(@numerador*operador.denominador + @denominador*operador.numerador, @denominador*operador.denominador)
  end

  def resta(operador)
    resultado = Fraccion.new(@numerador*operador.denominador - @denominador*operador.numerador, @denominador*operador.denominador)
  end

  def producto(operador)
    resultado = Fraccion.new(@numerador*operador.numerador, @denominador*operador.denominador)
  end

  def division(operador)
    resultado = Fraccion.new(@numerador*operador.denominador, @denominador*operador.numerador)
  end

end
