require 'dragonfly'
require 'dragonfly_mozjpeg/plugin'
require 'dragonfly_mozjpeg/version'

module DragonflyMozjpeg
  base_path = File.expand_path(File.join(__dir__, '../vendor/mozjpeg'))

  CJPEG    = File.join(base_path, 'linux/cjpeg')
  JPEGTRAN = File.join(base_path, 'linux/jpegtran')

  def compressor_exists?(name, default)
    puts "\n test! \n"
  end
end
