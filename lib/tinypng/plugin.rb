# frozen_string_literal: false

require "tinify"

module Danger
  # Compress your PNG/JPEG images by using TinyPNG API.
  # For more, please visit [danger-tinypng](https://github.com/kingcos/danger-tinypng)
  #
  # @example Setup your TinyPNG API key, then run it.
  #
  #          tinypng.api_key = 'REGISTER_YOUR_API_KEY_ON_TINYPNG.COM'
  #          tinypng.run
  #
  # @see  kingcos/danger-tinypng
  # @tags ci,danger-plugin,tinypng,tinyjpg
  #
  class DangerTinyPNG < Plugin
    # Setup TinyPNG API key.
    #
    # @param    [String]
    # @return   [void]
    def api_key(api_key)
      Tinify.key = api_key
      Tinify.validate!
    rescue Tinify::AccountError => e
      fail 'Account Error - ' + e.message
    rescue Tinify::ServerError => e
      fail 'Server Error - ' + e.message
    rescue Tinify::ConnectionError => e
      fail 'Connection Error - ' + e.message
    rescue Tinify::Error => e
      fail 'Error - ' + e.message
    end

    # Run plugin
    #
    # @return   [void]
    def run
      puts 'Run'
    end

    private

    def filter_image_files
      puts 'filter_image_files'
    end
  end
end
