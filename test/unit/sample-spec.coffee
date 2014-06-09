describe "samples", ->

	beforeEach module "xl.samples"

	it "changes case of input", inject (shuffleCaseFilter) ->
		shuffleCaseFilter("abcd").should.be.equal "AbCd"
