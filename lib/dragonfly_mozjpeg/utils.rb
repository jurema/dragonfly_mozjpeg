require 'os'

module DragonflyMozjpeg
  module Utils

    module_function

    def logger
      @logger       ||= Logger.new(STDOUT)
      @logger.level ||= Logger::WARN
      @logger
    end

    def check_binary(current, file)
      if File.exists?(current)
        current
      elsif OS.linux? && OS.bits == 64
        File.join(BASE_PATH, "linux/#{file}")
      else
        logger.warn("dragonfly_mozjpeg: missing #{file} path")
        nil
      end
    end

    def stringify_options(opts = nil)
      return '' if opts.nil?

      if opts.is_a? String
        opts.gsub('-outfile', '')
      elsif opts.is_a? Array
        opts[-1] = opts.last.map do |k,v|
          " -#{k} #{v}" unless k.to_s == 'outfile'
        end.join[2..-1] if opts.last.is_a? Hash
        " -#{(opts - ['outfile']).join(' -')}"
      elsif opts.is_a? Hash
        opts.map do |k,v|
          " -#{k} #{v}" unless k.to_s == 'outfile'
        end.join
      else
        ''
      end
    end

  end
end
