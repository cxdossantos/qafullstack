class AvengerHeadQuarter
    attr_accessor :list

    def initialize
        self.list = []
    end

    def put(avenger)
        self.list.push(avenger)
    end
end

# TDD (Desenvolvimento Guiado por Teste)
describe AvengerHeadQuarter do
   
    it 'Deve adicionar um Vingador' do
        hq = AvengerHeadQuarter.new

        hq.put('Spiderman')
        expect(hq.list).to eql ['Spiderman']
        expect(hq.list).to include 'Spiderman'
    end

    it 'deve adicionar uma lista de vingadores' do
        hq = AvengerHeadQuarter.new
        hq.put('Thor')
        hq.put('Hulk')
        hq.put('Spiderman')
        
        expect(hq.list).to include ('Thor')
        expect(hq.list).to include ('Hulk')
        expect(hq.list).to include ('Spiderman') 
        # expect(hq.list.size).to be > 0
        res = hq.list.size > 0
        expect(res).to be true
    end

    it 'Thor deve ser o priemiro da lista' do
        hq = AvengerHeadQuarter.new
        hq.put('Thor')
        hq.put('Hulk')
        hq.put('Spiderman')

        expect(hq.list).to start_with('Thor')
    end

    it 'Ironman deve ser o priemiro da lista' do
        hq = AvengerHeadQuarter.new
        hq.put('Thor')
        hq.put('Hulk')
        hq.put('Spiderman')
        hq.put('Ironman')

        expect(hq.list).to end_with('Ironman')
    end

    it 'Deve conter o sobrenome' do
        avanger = 'Peter Parker'

        expect(avanger).to match(/Parker/)
        expect(avanger).not_to match(/Xavier/)
    end
end