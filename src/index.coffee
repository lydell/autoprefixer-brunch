autoprefixer = require "autoprefixer"

module.exports = class AutoprefixerCompiler
	brunchPlugin: yes
	type: "stylesheet"
	extension: "css"
	pattern: /\.(?:css|scss|sass|less|styl)$/

	constructor: (@config)->
		{@browsers} = @config.plugins.autoprefixer ? {}

	compile: ({data, path, map}, callback)->
		try result = autoprefixer(@browsers...).process(data, {map: true, from: path})
		catch error
		callback(error, {data: result.css, map: result.map})
