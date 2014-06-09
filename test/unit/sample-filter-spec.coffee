describe "sample filter", ->

	beforeEach module "xl.filters"

	it "changes case of input", inject (shuffleCaseFilter) ->
		shuffleCaseFilter("abcd").should.be.equal "AbCd"
