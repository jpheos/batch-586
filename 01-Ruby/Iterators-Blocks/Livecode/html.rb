def tag(tagname, attributes=nil)
    content = yield
    return "<#{tagname}>#{content}</#{tagname}>" if attributes.nil?
    # attribute_name = attributes[0]
    # attribute_value = attributes[1]
    attribute_name, attribute_value = attributes
    "<#{tagname} #{attribute_name}=\"#{attribute_value}\">#{content}</#{tagname}>"
end

html = tag('a', ["href", "https://www.linkedin.com/in/cmalfroy"]) do
    "Vous vraiment beaux"
end

html2 = tag('h1') do
    "Je suis une souris"
end

puts html
puts html == "<a href=\"https://www.linkedin.com/in/cmalfroy\">Vous vraiment beaux</a>"

puts html2
puts html2 == "<h1>Vous vraiment magnifique</h1>"
