describe 'iframes' do
    describe 'bom', :nice_iframe do
        before(:each) do
            visit 'https://training-wheels-protocol.herokuapp.com/nice_iframe'
        end

        it 'adicionar ao carrinho' do
            within_frame('burgerId') do
                produto = find('.menu-item-info-box', text: 'REFRIGERANTE')
                produto.find('a').click
                expect(find('#cart')).to have_content 'R$ 4,50'
                sleep 5
            end
        end
    end
end