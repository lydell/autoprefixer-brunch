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
    {browsers} = @config.plugins.autoprefixer ? {}
    @compiler = autoprefixer(browsers...)

  optimize: ({data, path, map}, callback)->
    try result = @compiler.process(data, {map: true, from: path, mapAnnotation: false})
    catch error
    callback(error, {data: result.css, map: result.map})
