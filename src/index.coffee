autoprefixer = require "autoprefixer"

module.exports = class AutoprefixerCompiler
	brunchPlugin: yes
	type: "stylesheet"
	extension: "css"
	pattern: /\.(?:css|scss|sass|less|styl)$/

	constructor: (@config)->
		{@browsers} = @config.plugins.autoprefixer ? {}

	compile: ({data, path, map}, callback)->
		try compiled = autoprefixer(@browsers...).compile(data, {map: true, source: path})
		catch error
		# Use `.toString()` to be compatible with the original version and the fork simultaneously.
		callback(error, {data: compiled?.toString(), map: compiled?.map})
