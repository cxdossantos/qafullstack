Dado("que possuo itens no meu carrinho") do
  visit 'http://enjoeat.herokuapp.com/restaurants/burger-house/menu'
  
  #Adicionar um item especifico
  #item = find('.menu-item-info-box', text: 'Classic Burger'.upcase)
  #item.find('a').click

  #Adicionar um item Aleatório
  produtos = all('.menu-item-info-box')

  produtos.sample.find('a').click

  sleep 5

end
  
  Dado("eu já fechei o meu pedido") do
    find('a[href="/order"').click
  end
  
  Quando("eu finalizo meu pedido com {string}") do |forma_pagamento|

    find('input[formcontrolname=name]').set 'Cleiton'
    find('input[formcontrolname=email]').set 'cxdossantos@gmail.com'
    find('input[formcontrolname=emailConfirmation]').set 'cxdossantos@gmail.com'
    find('input[formcontrolname=address]').set 'Rua Saldanha Marinho '
    find('input[formcontrolname=number]').set '3456'
    find('input[formcontrolname=optionalAddress]').set 'Empresa Mirum'

    linha = find('mt-radio[formcontrolname="paymentOption"] div', text: forma_pagamento)
    linha.find('label div').click

    click_button 'Concluir Pedido'

    sleep 10

  end
  
  Então("meu pedido é concluido com a mensagem:") do |mensagem_final|
    expect(page).to have_content mensagem_final
  end

