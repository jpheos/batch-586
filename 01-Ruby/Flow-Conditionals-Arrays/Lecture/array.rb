my_array = ['resaurant', 'magasin', 'bar' , 'cabaret']
#               0            1        2        3
empty_array = []

index_string = "1"

# puts my_array[1]
# puts my_array[index_string.to_i]

my_array[2] = 'cathedrale'

my_array << 'cabaret'

# puts my_array

my_array.delete("cabaret")
my_array.delete_at(2)

my_array.each do |toto|
    puts toto
end