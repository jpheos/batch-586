def tag(tagname, attributes=nil)
    content = yield
    return "<#{tagname}>#{content}</#{tagname}>" if attributes.nil?
    # attribute_name = attributes[0]
    # attribute_value = attributes[1]
    attribute_name, attribute_value = attributes
    "<#{tagname} #{attribute_name}=\"#{attribute_value}\">#{content}</#{tagname}>"
end

puts "Enter the tag you want to see in the html"
user_tag = gets.chomp

puts "Enter the content you want to see in the html"
user_input = gets.chomp

puts "Enter the attribute name"
attribute_name = gets.chomp

puts "Enter the attribute value"
attribute_value = gets.chomp

html = tag(user_tag, [attribute_name, attribute_value]) do
    user_input
end

p html