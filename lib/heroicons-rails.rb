require "heroicons/version"
require "heroicons/engine"
require "heroicons/icon"

module Heroicons
  extend ActiveSupport::Autoload

  def self.root
    File.dirname(__dir__)
  end
end
