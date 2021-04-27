require 'pry'

def a
  b
end

def b
  c
end

def c
  d
end

def d
  binding.pry
end

a
