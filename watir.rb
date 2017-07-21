require 'watir'

browser = Watir::Browser.new
browser.goto 'google.com'

#méthode de recherche
search_bar = browser.text_field(class: 'gsfi')
search_bar.set("Hello World!")

#méthode de barre d'entrée
search_bar.send_keys(:enter)

#méthode du clic
submit_button = browser.button(type:"submit")
submit_button.click

#méthode du waiting (temps)
browser.driver.manage.timeouts.implicit_wait = 3

#Recupération de div
browser.div(class:"rc")
search_result_divs = browser.divs(class:"rc")
search_result_divs.each { |div| p div.h3.text }

browser.driver.manage.timeouts.implicit_wait = 30


while (true)
end

