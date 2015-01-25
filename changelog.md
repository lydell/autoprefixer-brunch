### Version 1.8.4 (2015-01-25) ###

- Improved: Upgraded to autoprefixer 5.0.


### Version 1.8.3 (2014-08-23) ###

- Changed: `autoprefixer-core` is now used instead of `autoprefixer`.
- Changed: `config.plugins.autoprefixer` is now simply passed directly to
  `autoprefixer`. This means that all options are now specified directly in
  `config.plugins.autoprefixer`, not in `config.plugins.autoprefixer.options`.
  (`config.plugins.autoprefixer.options` is still supported for
  backwards-compatibility.)


### Version 1.8.2 (2014-07-01) ###

- Improved: Updated to autoprefixer 2.1+.
- Fixed: Errors are now reported correctly.
- Added: You may now pass options to autoprefixer.


### Version 1.8.1 (2014-06-19) ###

- Fixed: The source map generation was broken.


### Version 1.8.0 (2014-05-27) ###

- Improved: Works regardless of which CSS preprocessor you might have used. As
  a nice side effect, you don’t need to care about putting this plugin after
  any preprocessors in package.json anymore.

  This requires brunch 1.7.14. Note that version 1.8.x of this plugin should
  work with brunch 1.7.14–1.8.x and that it does not work (properly) with
  brunch 1.7.13 and older.


### Version 1.7.1–1.7.8 ###

- Minor fixes.

Version 1.7.8 is the latest (and last) version that supports brunch 1.7.13 and
older.


### Version 1.7.0 (2013-10-04) ###

- Initial release.
