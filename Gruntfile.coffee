# Generated on 2013-12-30 using generator-library 0.0.1
module.exports = (grunt) ->
  require('load-grunt-tasks')(grunt)

  grunt.registerTask 'build', [
    'clean'
    'jshint'
    'browserify'
  ]

  grunt.registerTask 'test', [
    'build'
    'mochacli'
  ]

  grunt.registerTask 'default', ['test']

  grunt.initConfig
    pkg:
      grunt.file.readJSON 'package.json'

    yeoman:
      src: 'src'
      dist: 'dist'
      test: 'test'

    clean:
      dist: [
        '<%= yeoman.dist %>'
      ]

    jshint:
      options:
        reporter: require('jshint-stylish')
        jshintrc: '.jshintrc'
      src: [
          '<%= yeoman.src %>/**/*.js'
        ]

    browserify:
      dist:
        files: [
          '<%= yeoman.dist %>/cocktail-npm.js': '<%= yeoman.src %>/index.js'
        ]
        # src: '<%= yeoman.src %>/index.js'
        # dest: '<%= yeoman.dist %>/cocktail-npm.js'
        options:
          standalone: 'cocktail'
          transform: [
            'debowerify'
          ]

    mochacli:
      spec:
        dist: '<%= yeoman.test %>/test.js'
        options:
          reporter: 'spec'

