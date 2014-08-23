###
# Copyright 2013-2014 Simon Lydell
# X11 (“MIT”) Licensed. (See LICENSE.)
###

autoprefixer = require "autoprefixer-core"

module.exports = class Autoprefixer
  brunchPlugin: yes
  type: "stylesheet"
  extension: "css"
  defaultEnv: "*"

  constructor: (@config)->
    options = @config.plugins.autoprefixer ? {}

    if "options" of options
      console.warn "`config.plugins.autoprefixer.options` is deprecated. Put
        the options directly in `config.plugins.autoprefixer` instead"
      oldOptions = options.options
      options = {browsers: options.browsers}
      for own key, value of oldOptions
        options[key] = value

    @compiler = autoprefixer(options)

  optimize: ({data, path, map}, callback)->
    try
      result = @compiler.process(data,
        from: path, to: path
        map:
          prev: map.toJSON()
          annotation: false
      )

    catch error
      return callback error

    callback null, {data: result.css, map: result.map.toJSON()}
