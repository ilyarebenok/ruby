require 'nokogiri'
require 'open-uri'

doc = Nokogiri::HTML(open('https://ru.wikipedia.org/wiki/%D0%9A%D1%80%D0%B0%D1%81%D0%BD%D0%BE%D0%B7%D1%91%D1%80%D1%81%D0%BA%D0%BE%D0%B5'))
index = doc.css('td[class="plainlist"]').css('span[data-wikidata-property-id="P281"]').text

puts 'Почтовый индекс '+index
