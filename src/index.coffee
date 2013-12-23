autoprefixer = require "autoprefixer"

module.exports = class Autoprefixer
	brunchPlugin: yes
	type: "stylesheet"
	extension: "css"
	defaultEnv: "*"

	constructor: (@config)->
		{@browsers} = @config.plugins.autoprefixer ? {}

	optimize: ({data, path, map}, callback)->
		try result = autoprefixer(@browsers...).process(data, {map: true, from: path})
		catch error
		callback(error, {data: result.css, map: result.map})
