require "test_helper"

class Heroicons::IconTest < ActiveSupport::TestCase
  test "expects a variant" do
    assert_raise ArgumentError do
      Heroicons::Icon.new("name", size: 20)
    end
  end

  test "expects a size" do
    assert_raise ArgumentError do
      Heroicons::Icon.new("name", variant: 20)
    end
  end

  test "sets a default variant if invalid is provided" do
    icon = Heroicons::Icon.new("name", size: 20, variant: :invalid)
    assert_equal :solid, icon.variant
  end

  test "sets a default size if invalid is provided" do
    icon = Heroicons::Icon.new("name", size: 10, variant: :solid)
    assert_equal 24, icon.size
  end

  test "renders svg" do
    icon = Heroicons::Icon.new("academic-cap", size: 24, variant: :solid)

    assert icon.render.is_a?(Nokogiri::HTML::DocumentFragment)
  end

  test "renders svg with custom attributes" do
    rendered = Heroicons::Icon.new("academic-cap", size: 24, variant: :solid, "data-bar": "foo").render

    assert_equal "foo", rendered.at_css("svg").attributes["data-bar"].value
  end
end