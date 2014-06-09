describe "sample filter", ->

	beforeEach module "xl.filters"

	it "changes case of input", inject (sampleFilter) ->
		sampleFilter("abcd").should.be.equal "AbCd"
