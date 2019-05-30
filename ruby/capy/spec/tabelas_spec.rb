describe 'Tabelas', :tabs do
    before(:each) do
        visit '/tables'
    end

    it 'deve exibir salário do tony stark' do
        atores = all('table tbody tr')
        stark = atores.detect{ |ator| ator.text.include?('Robert Downey Jr') }

        puts stark.text
        expect(stark.text).to include '10.000.000'
    end

    it 'deve exibir o salário do vin diesel' do
        diesel = find('table tbody tr', text: '@vindiesel')
        expect(diesel).to have_content '10.000.000'
    end

    it 'deve exibir filme velozes e furiosos' do
        diesel = find('table tbody tr', text: '@vindiesel')
        movie = diesel.all('td')[2].text
        
        expect(movie).to eql 'Fast and Furious'
    end

    it 'deve exibir o instagran do Chris Evans' do 
        evans = find('table tbody tr', text: 'Chris Evans')
        instagram = evans.all('td')[4].text

        expect(instagram).to eql '@teamcevans'
    end
    
    it 'deve selecionar Chris Prat para remoção' do
        prat = find('table tbody tr', text: 'Chris Prat')
        prat.find('a', text: 'delete').click
    end

end