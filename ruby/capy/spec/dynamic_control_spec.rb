describe 'Dynamic Control', :dc do
    
    before(:each) do
        visit 'https://training-wheels-protocol.herokuapp.com/dynamic_controls'
    end
    
    it 'quando habilita o campo' do

        # quando tem a propriedade disable = true o campo está desabilitado;
        # quando tem a propriedade disable = false o campo está desabilitado;

        res = page.has_field? 'movie', disabled: true
        puts res

        click_button 'Habilita'

        res = page.has_field? 'movie', disabled: false
        puts res
    end

end
