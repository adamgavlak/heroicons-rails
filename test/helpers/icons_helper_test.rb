require "test_helper"

class IconsHelperTest < ActionView::TestCase
  include Heroicons::IconsHelper

  test "icon" do
    PLUS_ICON = <<~SVG
      <svg xmlns="http://www.w3.org/2000/svg" viewbox="0 0 24 24" fill="currentColor" aria-hidden="true">
        <path fill-rule="evenodd" d="M12 3.75a.75.75 0 01.75.75v6.75h6.75a.75.75 0 010 1.5h-6.75v6.75a.75.75 0 01-1.5 0v-6.75H4.5a.75.75 0 010-1.5h6.75V4.5a.75.75 0 01.75-.75z" clip-rule="evenodd"></path>
      </svg>
    SVG

    assert_dom_equal PLUS_ICON, heroicon_tag("plus")
  end
end
