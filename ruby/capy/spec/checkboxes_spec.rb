describe 'Caixa de seleção', :checkbox do
    
    before(:each) do
        visit 'https://training-wheels-protocol.herokuapp.com/checkboxes'
    end
    
    it 'marcando uma opção' do
        check('thor')
        sleep 3
    end

    it 'marcando uma opção' do
        uncheck('antman')
        sleep 3
    end

    after(:each) do
        sleep 3 #temporario
    end
end
