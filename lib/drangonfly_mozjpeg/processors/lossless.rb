module DragonflyMozjpeg
  module Processors
    class Lossless
      def call(content, format, options = nil)
        command = content.env[:jpegtran] || JPEGTRAN

        puts " \n\n +__________________+ "
        puts format.inspect
        puts options.inspect
        puts " +__________________+ \n\n "

        #if options.is_a? Array && options.last.is_a? Hash
        #  options = [options.first.join(' -')] + options.last.map{|k,v| " -#{k} #{v}"}
        #elsif options.is_a?
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
