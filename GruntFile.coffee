module.exports = (grunt) ->
	require("load-grunt-tasks")(grunt)

	grunt.initConfig
	    karma:
	      unit:
	        configFile: "test/unit/karma.unit.js"

	grunt.registerTask "unit", ["karma"]
