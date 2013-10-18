require "./racional.rb"
require "test/unit"

class Test_Fraccion < Test::Unit::TestCase

  def setup
    @a = Fraccion.new(1,4)
    @b = Fraccion.new(1,4)
  end

  def test_suma
    r = @a.suma(@b)
    assert r.numerador == 1 and r.denominador == 2
  end
end
