class PokemonCLI::Pokemon
  attr_accessor :types, :base_exp, :pokedex, :specs, :stats, :games, :name
  @@all = []
  
  def initialize(pokemon)
    pokemon.each {|key, value| self.send(("#{key}="), value)}
    save
  end
  
  def self.all
    @@all
  end
  
  def save
    @@all << self
  end
end