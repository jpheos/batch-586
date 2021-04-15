# { |num| num * 2 }

# do |num|
#     a = num * 3
#     a = a * 5
#     a * 2
#     puts "roro"
# end

def timer
    begin_time = Time.now
    yield
    end_time = Time.now
    puts "Elapsed time: #{end_time - begin_time}s"
end


timer do
    for i in 0..999999
        1 * 5
    end
end