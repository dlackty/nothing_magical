# NothingMagical

> A simple utility to remove all magic encoding comments on Ruby source code files.

In [Ruby 2.0](http://www.ruby-lang.org/en/news/2013/02/24/ruby-2-0-0-p0-is-released/), one of the major change is that UTF-8 becomes the default encoding of Ruby source code files, which makes many magic comments omissible.

## Usage

Currently this gem removes comments from Ruby, Rake and Haml source files.

```bash
gem i nothing_magical
nothing_magical .
```	

## Credits

NothingMagical was inspired by Manuel Ryan's [magic_encoding](https://github.com/m-ryan/magic_encoding) gem, which adds magic comments for Ruby source code files.

## License

NothingMagical is available under the MIT license. See the LICENSE file for more info.