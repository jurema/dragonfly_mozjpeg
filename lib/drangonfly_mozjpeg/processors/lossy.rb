module DragonflyMozjpeg
  module Processors
    class Lossy
      def call(content, format, options = {})
        command = content.env[:cjpeg] || CJPEG

        puts " \n\n +__________________+ "
        puts format.inspect
        puts options.inspect
        puts " +__________________+ \n\n "

        #command = content.env[:cjpeg] || CJPEG
        #options = options.deep_stringify_keys

        #content.shell_update ext: format, do |old_path, new_path|
        #  "#{command} #{options} -outfile #{new_path} #{old_path}"
        #end
      end

      def update_url(url_attributes, format, options = {})
        url_attributes.ext = format.to_s
      end
    end
  end
end
