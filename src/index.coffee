###
# Copyright 2013-2014 Simon Lydell
# X11 (“MIT”) Licensed. (See LICENSE.)
###

autoprefixer = require "autoprefixer"

module.exports = class AutoprefixerCompiler
  brunchPlugin: yes
  type: "stylesheet"
  extension: "css"
  pattern: /\.(?:css|scss|sass|less|styl)$/

  constructor: (@config)->
    {browsers} = @config.plugins.autoprefixer ? {}
    @compiler = autoprefixer(browsers...)

  compile: ({data, path, map}, callback)->
    try result = @compiler.process(data, {map: true, from: path})
    catch error
    callback(error, {data: result.css, map: result.map})
