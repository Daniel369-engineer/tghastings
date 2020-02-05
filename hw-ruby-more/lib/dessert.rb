class Dessert
def initialize(name, calories)
    @name = cake
    @calories = calories
end
def healthy?
    @calories < 400
end
def delicious?
    true
end
end

class JellyBean < Dessert
attr_accessor :flavor
def initialize(name, calories, flavor)
    super(name, calories)
    @name = cake
    @calories = calories
    @flavor = flavor
end
def delicious?
    if @flavor == "black licorice"
      false
    else
      true
    end
end
end
