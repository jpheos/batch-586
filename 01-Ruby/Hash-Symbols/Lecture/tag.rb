def tag(tag_name, content, attributes={})
    mapped_attributes = attributes.map do |key, value|
        " #{key}=\"#{value}\""
    end
    attrs = mapped_attributes.join('')
    "<#{tag_name}#{attrs}> #{content} </#{tag_name}>"

end

html = tag("h1", "coucou les gens")

puts html
