module Heroicons
  class Icon
    VARIANTS = %i[solid outline].freeze
    SIZES = [20, 24].freeze

    attr_reader :name, :variant, :size

    def initialize(name, variant:, size:, **options)
      @name = name
      @variant = variant.in?(VARIANTS) ? variant : :solid
      @size = size.in?(SIZES) ? size : 24
      @options = options.with_indifferent_access
    end

    def render
      return warning unless content.present?

      fragment = Nokogiri::HTML::DocumentFragment.parse(content)
      svg = fragment.at_css "svg"
      @options.each { |key, value| svg[key.to_s] = value }
      fragment
    end

    private

    def path
      @path ||= File.join(Heroicons.root, "app/assets/images/heroicons/#{@size}/#{@variant}/#{@name}.svg")
    end

    def content
      @content ||= File.read(path).force_encoding("UTF-8")
    rescue
      nil
    end

    def warning
      "<!-- Icon '#{@name}' does not exist -->"
    end
  end
end