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
        cwd: "templates"
        src: "**/*.html"
        dest: "src/templates.js"

    release:
      options:
        npm: false

  grunt.registerTask "unit", ["jshint", "karma"]
  grunt.registerTask "publish", ["jshint", "karma", "ngtemplates", "release"]
  grunt.registerTask "publish:minor", ["jshint", "karma", "ngtemplates", "release:minor"]
  grunt.registerTask "publish:major", ["jshint", "karma", "ngtemplates", "release:major"]
