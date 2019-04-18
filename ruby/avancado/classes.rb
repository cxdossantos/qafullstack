class Conta
    attr_accessor :saldo, :nome

    #Construtor
    def initialize(nome)
        self.saldo = 0.0
        self.nome = nome
    end

    def deposita(valor)
        # como se fosse o .this de outras linguagens
        self.saldo += valor
        #puts 'Depósito da quantia de R$ ' + valor.to_s + '.'
        puts "Depositando a quantida de R$ #{valor} na conta de #{self.nome}." 
    end
end

c = Conta.new('Cleiton Xavier dos Santos')

c.deposita(100.00)
c.deposita(150.00)

puts "#{c.nome}, seu Saldo atual é R$ #{c.saldo}"
