require 'dragonfly_mozjpeg/utils'

module DragonflyMozjpeg
  module Processors
    class Lossy
      def call(content, opts = nil)
        content.shell_update ext: 'jpg' do |input, output|
          "#{content.env[:cjpeg]} #{Utils.stringify_options(opts)} -outfile #{output} #{input}"
        end
      end

      def update_url(url_attributes, format, options = {})
        url_attributes.ext = format.to_s
      end
    end
  end
end
