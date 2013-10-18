require "./gcd.rb"

class Fraccion

  attr_accessor :denominador, :numerador

  def initialize(numerador, denominador)
    #Controlando que los numeros sean enteros, y que el denominador no sea 0
    raise ArgumentError, 'El denominador es 0' unless denominador != 0
    raise ArgumentError, 'El denominador no es entero' unless denominador.is_a? Integer
    raise ArgumentError, 'El numerador no es entero' unless numerador.is_a? Integer
   @numerador = numerador
   @denominador = denominador
   minimizar
  end

  def minimizar #Construcción de la fracción
    comunDiv = gcd(numerador, denominador) # Calculando maximo comun divisor
    @numerador = @numerador / comunDiv # Asignamos los valores de la fraccion mas simplificada
    @denominador = @denominador / comunDiv
  end

  def to_s
    "#{@numerador}/#{@denominador}"
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

