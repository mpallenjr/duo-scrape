# scrape Duoliogo
require "ferrum"
require 'dotenv/load'
browser = Ferrum::Browser.new(slowmo: 2)
page = browser.create_page
page.go_to(ENV['DUOLINGO_URL'])
email = page.at_xpath("//*[@id='web-ui1']")
email.focus.type("#{ENV['DUOLINGO_USERNAME']}")
password = page.at_xpath("//*[@id='web-ui2']")
password.focus.type("#{ENV['DUOLINGO_PASSWORD']}")
page.at_xpath("//*[@class='WxjqG _1x5JY _1M9iF _36g4N _2YF0P _1QN-w']").click
page.screenshot(path: "duo-1.png")
page.go_to("https://www.duolingo.com/practice")
page.screenshot(path: "duo-2.png")
browser.quit
