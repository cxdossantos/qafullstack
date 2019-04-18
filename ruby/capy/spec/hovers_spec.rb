describe 'Mouse hover', :hovers do

    before(:each) do
        visit 'https://training-wheels-protocol.herokuapp.com/hovers'
    end

    it 'quando passo o mouse sobre o blade' do
        card = find('img[alt=Blade]')
        card.hover

        expect(page).to have_content 'Nome: Blade'
    end

    it 'quando passo o mouse sobre o Pantera Negra' do
        card = find('img[alt^=Pantera]')
        card.hover

        expect(page).to have_content 'Nome: Pantera Negra'
    end

    it 'quando passo o mouse sobre o Homem Aranha' do
        card = find('img[alt$=Aranha]')
        card.hover

        expect(page).to have_content 'Nome: Homem Aranha'
    end

    after(:each) do
        sleep 0.5
    end
end