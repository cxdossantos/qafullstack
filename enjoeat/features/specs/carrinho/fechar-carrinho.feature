#language: pt

@green_food
Funcionalidade: Fechar carrinho
    Para que eu possa ter certeza de que vou receber e pegar tudo certinho
    Sendo um usuário que adicionou itens no meu carrinho
    Posso fechar o meu carrinho

    @total
    Cenario: Valor total e frete
        
        Dado que adicionei os seguintes items no carrinho
            | quantidade | nome                | descricao                                 | subtotal |
            | 1          | Suco Detox          | Suco de couve, cenoura, salsinha e maçã. | R$ 14,90 |
            | 2          | Hamburger de Quinoa | Cheio de fibras e muito saboroso.         | R$ 21,00 |
        Quando eu fecho meu carrinho
        Então o valor total de itens deve ser igual a "R$ 35,90"
        E o valor do frete deve ser igual a "R$ 8,00"
        E o valor total da compra deve ser igual a "43,90"
