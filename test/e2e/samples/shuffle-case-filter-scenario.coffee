describe "shuffle case filter", ->

	beforeEach ->
		Browser.open 'samples/shuffle-case-filter.html'

	it "changes case", ->
		expect(element(By.css('body')).getText()).toContain "HeLlO WoRlD!"
