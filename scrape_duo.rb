# scrape Duoliogo
require "ferrum"

browser = Ferrum::Browser.new
page = browser.create_page
page.go_to("https://www.duolingo.com/practice-hub")
email = page.at_xpath("//*[@id='web-ui1']")
email.focus.type("Hello")
password = page.at_xpath("//*[@id='web-ui2']")
password.focus.type("Hello")
page.at_xpath("//*[@class='WxjqG _1x5JY _1M9iF _36g4N _2YF0P _1QN-w']").click
page.screenshot(path: "duo.png")
browser.quit
