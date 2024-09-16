## ConfigGenius
  # assets
    Bootstrap.
    button
    select2
  # helpes
    btn
    message
    pagination
    search
    table

## Usage
  app/assets/config/manifest.js
    //= link config_genius/application.css
  app/views/layouts/application.html.erb
      <%= stylesheet_link_tag "config_genius/application" %>
  app/controllers/application_controller.rb
    include PagyConcern
  app/helpers/application_helper.rb
    include ConfigGenius::ApplicationHelper

## Installation
Add this line to your application's Gemfile:

```ruby
gem "config_genius"
```

And then execute:
```bash
$ bundle
```

Or install it yourself as:
```bash
$ gem install config_genius
```

## Contributing
Contribution directions go here.

## License
The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
