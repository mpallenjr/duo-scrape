# scrape Duoliogo
require "ferrum"

browser = Ferrum::Browser.new
browser.go_to("https://google.com")
browser.screenshot(path: "google.png")
browser.quit
