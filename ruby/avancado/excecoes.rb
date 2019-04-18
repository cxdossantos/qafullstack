### Try de outras linguagens
# begin
#     # Devo tentar alguma ação
#     file = File.open('./ola.txt')
#     if file
#         puts file.read
#     end

### Cath de outras lingugens
# rescue Exception => e
#     # Obter possivel Erro
#     puts e.message
#     puts e.backtrace 
# end

def soma(n1, n2)
    n1 + n2
rescue Exception => e
    puts e.message
end

soma('10', 5)