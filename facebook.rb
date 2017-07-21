require 'watir'

browser = Watir::Browser.new
browser.goto 'https://www.facebook.com/groups/295885777409383/members/'

#Se connecter
login = browser.text_field(id: 'email')
login.set("adresse@email.com")

password = browser.text_field(id: 'pass')
password.set("motdepasse")

#méthode de barre d'entrée
password.send_keys(:enter)

browser.driver.manage.timeouts.implicit_wait = 10

#Méthode 1 afficher la suite
see_more = browser.link text: 'Afficher la suite'
see_more.exists?
see_more.click

sleep 10
# méthode 2 afficher la suite
# browser.link(:text =>"Afficher la suite").when_present.click

#Récupérer les liens

search_result = browser.divs(class: "fsl fwb fcb")
search_result.each { |div| p div.a.text + " - " + div.a.href}

#méthode 2 afficher la suite
# search_bar = browser.text_field(class: '_1frb')
# search_bar.set("Wanted Community Paris")

# browser.driver.manage.timeouts.implicit_wait = 30

while (true)
end
