describe 'Forms' do

    it 'login sucesso' do
        visit 'https://training-wheels-protocol.herokuapp.com/login'
        expect(page.title).to eql 'Training Wheels Protocol'

        fill_in 'username', with: 'stark'
        fill_in 'password', with: 'jarvis!'

        click_button 'Login'

        expect(find('#flash').visible?).to be true 
        
        #Consultando na String
        #expect(find('#flash').text).to include 'Olá, Tony Stark. Você acessou a área logada!'

        #Consultando no Elemento
        expect(find('#flash')).to have_content 'Olá, Tony Stark. Você acessou a área logada!'

    end
    
    it 'senha incorreta' do

    end


     it 'usuário não cadastrado' do

  end

end
