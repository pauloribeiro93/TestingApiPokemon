module Generation
  include HTTParty
  base_uri "https://pokeapi.co/api/v2/generation"
  format :json
end
