module Heroicons
  class Icon
    AVAILABLE_VARIANTS = {
      16 => [:solid],
      20 => [:solid],
      24 => [:outline, :solid]
    }.freeze

    attr_reader :name, :variant, :size

    def initialize(name, variant:, size:, **options)
      @name = name
      @size = size.in?(AVAILABLE_VARIANTS.keys) ? size : 24
      @variant = variant.in?(AVAILABLE_VARIANTS[@size]) ? variant : :solid
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