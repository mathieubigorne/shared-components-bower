describe "external link directive", ->

	beforeEach ->
		Browser.open 'samples/external-link.html'

	it "creates a link", ->
		expect(element(By.css('a')).getAttribute("href")).toContain "google"
		expect(element(By.css('a')).getText()).toContain "Click me"
