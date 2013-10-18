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
    raise ArgumentError, 'No es una fracción' unless racional.is_a? Fraccion #Si no es una fraccion devuelve un error
    resultado = Fraccion.new(@numerador*racional.denominador + @denominador*racional.numerador, @denominador*racional.denominador) #x/y + w/z = (x*z + y*w)/y*z
  end

  def resta(racional)
    raise ArgumentError, 'No es una fracción' unless racional.is_a? Fraccion
    resultado = Fraccion.new(@numerador*racional.denominador - @denominador*racional.numerador, @denominador*racional.denominador) #x/y - w/z = (x*z - y*w)/y*z
  end

  def producto(racional)
    raise ArgumentError, 'No es una fracción' unless racional.is_a? Fraccion
    resultado = Fraccion.new(@numerador*racional.numerador, @denominador*racional.denominador) #x/y * w/z = (x*w)/(y*z)
  end

  def division(racional)
    raise ArgumentError, 'No es una fracción' unless racional.is_a? Fraccion
    resultado = Fraccion.new(@numerador*racional.denominador, @denominador*racional.numerador) #(z/y) / (x/z) = (x*z)/(w*y)
  end

end
