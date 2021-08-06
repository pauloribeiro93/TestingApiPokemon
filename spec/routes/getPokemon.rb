require "httparty"

class Pokelist
  include HTTParty
  base_uri "https://pokeapi.co"

  def pokemon()
    return self.class.get(
             "/api/v2/pokemon/",
             headers: {
               "Content-Type": "application/json",
             },

           )
  end
end
