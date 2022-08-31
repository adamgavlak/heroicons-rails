# <img src=".github/logo.svg?sanitize=true" width="38" height="38" alt="Heroicons on Rails"> Heroicons Rails

Easiest way to use Heroicons in your Rails application. This project adds a view helper to render the beautiful hand-crafted SVG icons, by the makers of Tailwind CSS. All icons in Heroicons `v2.0.0` are supported.

This project has no affiliation with Tailwind Labs. You can check out all icons at [Heroicons website](https://heroicons.com/).

## Installation

Add `heroicons-rails` to your Gemfile by running:

```bash
bundle add heroicons-rails
```

Or add it manually:

```rb
gem "heroicons-rails"
```

## Usage

After adding the gem in your Gemfile you can start to use `heroicon_tag` helper in your Rails application:

```rb
<%= heroicon_tag "plus" %>
```

Heroicons currently have two sets (solid, outline) and two sizes (20, 24). You can specify them as keyword arguments:

```rb
<%= heroicon_tag "plus", variant: :outline, size: 20 %>
```

This gem defaults the variant to `:solid` and size to `24`.

Any additional keyword parameters will be added as HTML attributes of the svg element:

```rb
<%= heroicon_tag "plus", class: "w-5 h-5", "data-controller": "disclosure" %>
```

Will result in:

```html
<svg xmlns="http://www.w3.org/2000/svg" viewbox="0 0 24 24" fill="currentColor" class="w-5 h-5" data-controller="disclosure">
    <path fill-rule="evenodd" d="M12 ..." clip-rule="evenodd"></path>
</svg>
```

## Development

Run the tests with `./bin/rails test`.

## License
Heroicons Rails is released under the [MIT License](https://opensource.org/licenses/MIT).
