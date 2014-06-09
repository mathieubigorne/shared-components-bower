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

    ngtemplates:
      options:
        standalone: true
        module: "xl.templates"
      app:
        cwd: "src"
        src: "*.html"
        dest: "src/templates.js"

  grunt.registerTask "unit", ["jshint", "karma"]
