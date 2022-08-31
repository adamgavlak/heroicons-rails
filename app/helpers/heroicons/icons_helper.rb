module Heroicons::IconsHelper
  def heroicon_tag(name, variant: :solid, size: 24, **options)
    raw Heroicons::Icon.new(name, variant: variant, size: size, **options).render
  end
end
