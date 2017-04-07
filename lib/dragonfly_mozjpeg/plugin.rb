require 'dragonfly_mozjpeg/processors/lossy'
require 'dragonfly_mozjpeg/processors/lossless'
require 'dragonfly_mozjpeg/utils'

module DragonflyMozjpeg
  class Plugin

    BASE_PATH = File.expand_path(File.join(__dir__, '../../vendor/mozjpeg'))

    def call(app, options = {})
      app.env[:cjpeg]    = Utils.check_binary(options[:cjpeg], 'cjpeg')
      app.env[:jpegtran] = Utils.check_binary(options[:jpegtran], 'jpegtran')

      app.add_processor :lossy,    Processors::Lossy.new
      app.add_processor :lossless, Processors::Lossless.new
    end
  end
end

Dragonfly::App.register_plugin(:mozjpeg) { DragonflyMozjpeg::Plugin.new }
