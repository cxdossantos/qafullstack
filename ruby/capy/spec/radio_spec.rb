describe 'Botões Radio', :radio do

    before(:each) do
        visit '/radios'
    end

    it 'selecao por ID' do
        #Seleciona somenta para ID
        choose('cap')
    end

    it 'selecao por find e css selector' do
        find('input[value=guardians').click
    end

    after(:each) do
        sleep 3
    end
end