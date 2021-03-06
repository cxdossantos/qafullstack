describe 'Caixa de Opção', :dropdown do

    it 'item especifico simples' do
        visit '/dropdown'
        select('Loki', from: 'dropdown')
        sleep 3 #temporario
    end

    it 'item especifico com find' do
        visit '/dropdown'
        drop = find('.avenger-list')
        drop.find('option', text: 'Scott Lang').select_option
        sleep 3 #temporario
    end

    it 'qualquer item', :sample do
        visit '/dropdown'
        drop = find('.avenger-list')

        #Sorteia um dos item da combobox
        drop.all('option').sample.select_option
        sleep 3 #temporario
    end
end