#language: pt
@green_food
Funcionalidade: Finalizar Pedido
    Para que eu possa receber um pedido no meu endereço
    Sendo um usuário que fechou o carrinho com itens
    Posso finalizar o meu pedido


    # BDD (Desenvolvimento guiado por comportamento) => Voltado para o negócio
    # BDT (Teste guiado por comportamento) => Voltado para o Teste

    # Sair do moelo transacional, para o modelo que tem valor ao negócio
    # Deixar de somente achar bugs, passar a ser estratégico

    # Exemplo BDT #
    # Cenario: Finalizar pedido com Cartão de Refeição

    #     Dado que eu fechei o meu carrinho
    #     E reencho o campo nome com "Cleiton"
    #     E preencho o campo email com "cxdossantos@gmail.com"
    #     E preencho o campo confirmação de e-mail com "cxdossantos@gmail.com"
    #     E preencho a rua com "R. Agustin Cortizo Penelas"
    #     E preencho o numero da rua com "67"
    #     E preencho o campo complemento com "Xapinhal"
    #     E clico na forma de pagamento "Cartão Refeição"
    #     Quando eu clico em "Finalizar Pedido"
    #     Então devo ver uma mensagem de sucesso

    # Exemplo BDD #
    @smoke
    Cenario: Finalizar pedido com Cartão de Refeição
        Dado que eu fechei o pedido com os itens:
            | quantidade | nome                | descricao                                 | subtotal |
            | 1          | Suco Detox          | Suco de couve, cenoura, salsinha e maçã. | R$ 14,90 |
            | 2          | Hamburger de Quinoa | Cheio de fibras e muito saboroso.         | R$ 21,00 |
        E informei os meus Dados de entrega
            | nome        | Cleiton                    |
            | email       | cxdossantos@gmail.com      |
            | rua         | R. Agustin Cortizo Penelas |
            | numero      | 67                         |
            | complemento | Xapinhal                   |
        Quando eu finalizo o pedido com "Cartão Refeição"
        Então devo ver a mensagem:
        """
        Seu pedido foi recebido pelo restaurante. Prepare a mesa que a comida está chegando!
        """