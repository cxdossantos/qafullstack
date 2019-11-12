Dado("que o produto desejado é {string}") do |produto|
    @produto_nome = produto
end

Dado("o valor do produto é de {string}") do |valor|
    @produto_valor = valor
end

Quando("eu adiciono {int} unidade") do |int|
    find('.menu-item-info-box-content', text: @produto_nome.upcase).find('.add-to-cart').click
    sleep 5
end

Então("{int} unidade desse item deve ser adicionado no carrinho") do |quantidade|
    cart = find('#cart')
    expect(cart).to have
end

Então("o valor total deve ser de {string}") do |string|
pending # Write code here that turns the phrase above into concrete actions
end


0