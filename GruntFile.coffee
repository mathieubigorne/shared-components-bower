module.exports = (grunt) ->
  require("load-grunt-tasks")(grunt)

  grunt.initConfig
    connect:
      server:
        options:
          port: 4545
          base: "."

    karma:
      unit:
        configFile: "test/unit/karma.unit.js"

    protractor:
      options:
        configFile: "test/e2e/protractor.conf.js"
        keepAlive: true
      run: {}

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
  grunt.registerTask "e2e", ["jshint", "connect", "protractor"]
  grunt.registerTask "test", ["unit", "e2e"]

  grunt.registerTask "publish", ["ngtemplates", "test", "release"]
  grunt.registerTask "publish:minor", ["ngtemplates", "test", "release:minor"]
  grunt.registerTask "publish:major", ["ngtemplates", "test", "release:major"]
