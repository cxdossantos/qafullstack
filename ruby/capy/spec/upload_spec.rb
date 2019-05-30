describe 'Upload', :upload do
    
    before(:each) do
        visit '/upload'
        @arquivo = Dir.pwd + '/spec/fixtures/arquivo.txt'
        @imagem = Dir.pwd + '/spec/fixtures/maiordomundo.jpg'
    end

    it 'upload com arquivo de texto' do
        attach_file('file-upload', @arquivo)
        click_button 'Upload'

        div_arquivo = find('#uploaded-file')
        expect(div_arquivo.text).to eql 'arquivo.txt'
    end

    it 'upload com arquivo de imagem', :upload_imagem do
        attach_file('file-upload', @imagem)
        click_button 'Upload'
        
        #Alterado tempo de wait no helper
        puts Capybara.default_max_wait_time

        img = find('#new-image')
        expect(img[:src]).to include '/uploads/maiordomundo.jpg'
    end

    after(:each) do 
        sleep 3
    end
end 