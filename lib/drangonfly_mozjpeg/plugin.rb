require 'dragonfly_mozjpeg/processors/lossy'
require 'dragonfly_mozjpeg/processors/lossless'

module DragonflyMozjpeg
  class Plugin
    def call(app, _options = {})
      app.add_processor :lossy,    Processors::Lossy.new
      app.add_processor :lossless, Processors::Lossless.new
    end
  end
end

Dragonfly::App.register_plugin(:mozjpeg) { DragonflyMozjpeg::Plugin.new }
