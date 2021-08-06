describe "Validando a primeira Geração do Pokemon" do
  context "Validação de tudo realacionado a primera Geração" do
    before(:all) do
      @Generation = Generation.get("/1")
    end

    it "Validando a Região da primera geração" do
      regiao = @Generation["main_region"]["name"]

      expect(regiao).to eq("kanto")
      expect(@Generation.code).to eq(200)
    end

    it "Validando os 151 primeiros Pokemons" do
      species = @Generation["pokemon_species"].length

      expect(species).to equal(151)
    end
    it "Validando o primerio Pokemon da PokeDex" do
      primeiroPoke = @Generation["pokemon_species"][0]["name"]

      expect(primeiroPoke).to eq("bulbasaur")
    end
  end
end
