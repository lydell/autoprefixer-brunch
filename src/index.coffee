###
# Copyright 2013-2014 Simon Lydell
# X11 (“MIT”) Licensed. (See LICENSE.)
###

autoprefixer = require "autoprefixer"

module.exports = class Autoprefixer
  brunchPlugin: yes
  type: "stylesheet"
  extension: "css"
  defaultEnv: "*"

  constructor: (@config)->
    {browsers, options} = @config.plugins.autoprefixer ? {}
    @compiler = autoprefixer(browsers, options)

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
