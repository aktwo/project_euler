def paths size
  (1..(20*2)).inject(:*)/((1..20).inject(:*)**2)
end

puts paths 20
