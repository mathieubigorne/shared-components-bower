module.exports = (grunt) ->
	require("load-grunt-tasks")(grunt)

	grunt.initConfig
	    karma:
	      unit:
	        configFile: "test/unit/karma.unit.js"

	    jshint:
	      options:
	        jshintrc: "jshintrc"
	        reporter: require('jshint-stylish')
	      all: ["src/**/*.js"]

	grunt.registerTask "unit", ["jshint", "karma"]
