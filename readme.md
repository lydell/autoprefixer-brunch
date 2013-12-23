autoprefixer-brunch
===================

Adds [autoprefixer] support to [brunch].

[autoprefixer]: https://github.com/ai/autoprefixer
[brunch]: http://brunch.io/


Usage
=====

Install it: [how to][usage], [what plugin version to use][version]. `npm install --save
autoprefixer-brunch` should do the trick. Make sure that it is listed _after_ any CSS preprocessors
in the dependencies.

You can specify the browsers you want to target in your project:

```coffeescript
exports.config =
  # …
  plugins:
    autoprefixer:
      browsers: ["last 1 version", "> 1%", "ie 8", "ie 7"]
```

[usage]: https://github.com/brunch/brunch/blob/master/docs/plugins.md#usage
[version]: https://github.com/brunch/brunch/blob/master/docs/faq.md#what-version-of-plugin-do-i-need-to-use


License
=======

[MIT Licensed](LICENSE).
