autoprefixer-brunch
===================

Adds [autoprefixer] support to [brunch].

[autoprefixer]: https://github.com/ai/autoprefixer
[brunch]: http://brunch.io/


Usage
=====

Install it: [how to][usage], [what plugin version to use][version]. `npm
install --save autoprefixer-brunch` should do the trick. Note that version
1.8.x also works with brunch 1.7.14 and newer (but not 1.7.13 and older).

You can specify the browsers you want to target in your project, as well as
other options:

```coffeescript
exports.config =
  # …
  plugins:
    autoprefixer:
      browsers: ["last 1 version", "> 1%", "ie 8", "ie 7"]
      options:
        cascade: false
```

[usage]: https://github.com/brunch/brunch/blob/stable/docs/plugins.md#usage
[version]: https://github.com/brunch/brunch/blob/stable/docs/faq.md#what-version-of-each-plugin-do-i-need-to-use


License
=======

[X11 (“MIT”) Licensed](LICENSE).
