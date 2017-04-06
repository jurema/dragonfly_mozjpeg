# dragonfly mozjpeg

Plugin for [mozilla's](https://github.com/mozilla/mozjpeg) cjpeg and jpegtran encoders for dragonfly.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'dragonfly_mozjpeg'
```

And then execute:

```ruby
$ bundle
```

Or


```ruby
$ gem install dragonfly_mozjpeg
```

## Usage

```ruby
Dragonfly.app.configure do
  plugin :mozjpeg
end
```
### Processors

#### Lossy

Lossy compression with cjpeg, and you can pass cjpeg options. For example:

```ruby
image.lossy(:noovershoot, quality: "70,60", sample: "2x2", smooth: 10)
```
#### Lossless

Lossless compression with jpegtran, jpegtran and you can pass options, For example:

```ruby
image.lossless(:grayscale, :trim, copy: :none, flip: :horizontal)
```
## Contributing

Bug reports and pull requests are welcome at <https://github.com/jurema/dragonfly_mozjpeg>.

## License

This gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT), see LICENSE.txt.
