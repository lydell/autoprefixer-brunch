autoprefixer-brunch
===================

Adds [autoprefixer] support to [brunch].

[autoprefixer]: https://github.com/postcss/autoprefixer
[brunch]: http://brunch.io/


Usage
=====

Install it: [how to][usage], [what plugin version to use][version]. `npm
install --save autoprefixer-brunch` should do the trick. Note that version
1.8.x also works with brunch 1.7.14 and newer (but not 1.7.13 and older).

You can specify the browsers you want to target in your project, as well as
other options:

```coffee
exports.config =
  # …
  plugins:
    autoprefixer:
      browsers: ["last 1 version", "> 1%", "ie 8", "ie 7"]
      cascade: false
```

In a nutshell, `autoprefixer(config.plugins.autoprefixer)` is run, so you can
pass [anything you can pass to `autoprefixer`][autoprefixer-usage].

[usage]: https://github.com/brunch/brunch/blob/stable/docs/plugins.md#usage
[version]: https://github.com/brunch/brunch/blob/stable/docs/faq.md#what-version-of-each-plugin-do-i-need-to-use
[autoprefixer-usage]: https://github.com/postcss/autoprefixer-core#usage


License
=======

[X11 (“MIT”) Licensed](LICENSE).
