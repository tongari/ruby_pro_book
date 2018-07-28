module AwesomeApi
  @base_url = ''
  @debug_mode = false

  class << self
    def base_url=(value)
      @base_url = value
    end

    def base_url
      @base_url
    end

    def debug_mode=(value)
      @debug_mode = value
    end

    def debug_mode
      @debug_mode
    end

    # 以下の１行で上記は済む
    # attr_accessor: base_url, :debug_mode
  end
end


AwesomeApi.base_url = 'http://example.com'
AwesomeApi.debug_mode = true

puts AwesomeApi.base_url
puts AwesomeApi.debug_mode
