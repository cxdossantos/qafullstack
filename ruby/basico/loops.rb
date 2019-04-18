### DEFININDO LOOPS ###

# 10.times do
#     puts 'Repete'
# end

### DEFININDO LOOPS COM CONTADOR ###
# 5.times do |i|
#     puts 'Repetindo: ' + i.to_s + " vez(s)."
# end

### DEFININDO WHILE ###
# init = 0 
# while init <= 10 do
#     puts 'Repetindo ' + init.to_s + ' vez(es)'
#     init += 1
# end

## DEFININDO FOR ###
# for item in (0...10)
#     puts 'Repetindo ' + item.to_s + ' vez(es)'
# end

### DEFININDO ARRAYS ###
vingadores = ['ironman', 'Hulk', 'Spider-man', 'Thor']

vingadores.each do |v|
    puts v
end