require 'numbers_and_words'
p (1..1000).map{|e|I18n.with_locale(:en){e.to_words remove_hyphen: true, hundreds_with_union: true}.split(' ').map{|e|e.size}.inject(:+)}.inject(:+)

