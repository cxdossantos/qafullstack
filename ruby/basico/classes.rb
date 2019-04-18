### Ruby é um linguagem considerada puramente orientada a objetos
### Porque no RUby tudo são objetos

# Classe possui atributos e metodos
# Caracteristicas e Ações
# Ex.:Carro (Nome, Marca, Modelo, Cor, Portas, etc...)
#           (Ligar, Parar, Buzinar, etc..)

class Carro 
    attr_accessor :nome

    def ligar
        puts ('Carro lingando...')
    end
end

civic = Carro.new
civic.nome = 'Civic SE' 

puts civic.nome
civic.ligar