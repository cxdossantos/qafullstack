Dado("que o produto desejado é {string}") do |produto|
  @produto_nome = produto
end

Dado("o valor do produto é de {string}") do |valor|
  @produto_valor = valor
end

Quando("eu adiciono {int} unidade\\(s)") do |quantidade|
  quantidade.times do
    find(".menu-item-info-box-content", text: @produto_nome.upcase).find(".add-to-cart").click
  end
end

Então("deve ser adicionado {int} unidade\\(s) deste item") do |quantidade|
  cart = find("#cart")
  expect(cart).to have_text "(#{quantidade}x) #{@produto_nome}"
end

Então("o valor total deve ser de {string}") do |valor_total|
  cart = find("#cart")
  total = cart.find("tr", text: "Total:").find("td")
  expect(total.text).to have_text valor_total
end

# Lista de produtos

Dado("que os produtos desejados são:") do |table|
  @product_list = table.hashes
end

Quando("eu adiciono todos os itens") do
  @product_list.each do |p|
    p["quantidade"].to_i.times do
      find(".menu-item-info-box-content", text: p["nome"].upcase).find(".add-to-cart").click
    end
  end
end

Então("vejo todos os itens no carrinho") do
  cart = find("#cart")
  @product_list.each do |p|
    expect(cart).to have_text "(#{p["quantidade"]}x) #{p["nome"]}"
  end
end

#Remover Itens
Dado("que eu tenho os seguintes itens no carrinho:") do |table|
  @product_list = table.hashdade"]}x) #{p["nome"]}"es
  steps %(dade"]}x) #{p["nome"]}"
    Quando eu adiciono todosdade"]}x) #{p["nome"]}" os itens
  )dade"]}x) #{p["nome"]}"
enddade"]}x) #{p["nome"]}"
dade"]}x) #{p["nome"]}"
Quando("removo somente o {indade"]}x) #{p["nome"]}"t}") do |item|
  cart = find("#cart")dade"]}x) #{p["nome"]}"
  cart.all("table tbody tr")dade"]}x) #{p["nome"]}"[item].find(".danger").click
  sleep 5
end

Quando("removo todos os itens") do
  @product_list.each_with_index do |value, indx|
    cart = find("#cart")
    cart.all("table tbody tr")[indx].find(".danger").click
  end
end

Quando("eu limpo meu carrinho") do
  click_button "Limpar"
end

Então("vejo a seguinte mensagem {string}") do |mensagem|
  cart = find("#cart")
  expect(cart).to have_text mensagem
end
