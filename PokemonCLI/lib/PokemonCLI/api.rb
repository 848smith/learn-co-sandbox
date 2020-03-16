class PokemonCLI::API
  def self.get_pokemon(input)
    @pokemon_hash = PokeApi.get(pokemon: "#{input}")
    @pokemon = {
      base_exp: @pokemon_hash.base_experience,
      "specs" => {
        height: @pokemon_hash.height,
        weight: @pokemon_hash.weight
      },
      pokedex: @pokemon_hash.id,
      types: @pokemon_hash.types.collect {|type| type.type.name},
      "stats" => {
        speed: @pokemon_hash.stats[0].base_stat,
        special_attack: @pokemon_hash.stats[1].base_stat,
        special_defense: @pokemon_hash.stats[2].base_stat,
        attack: @pokemon_hash.stats[3].base_stat,
        defense: @pokemon_hash.stats[4].base_stat,
        hp: @pokemon_hash.stats[5].base_stat,
      },
      games: @pokemon_hash.game_indices.collect {|game| game.version.name},
      name: @pokemon_hash.name
    }
    PokemonCLI::Pokemon.new(@pokemon)
  end
end