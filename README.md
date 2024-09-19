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
 # app/assets/config/manifest.js
    //= link config_genius/select2.js
    //= link config_genius/popper.js
    //= link config_genius/chart.js
    //= link config_genius/jquery.js
    //= link config_genius/sweetalert2.js
    //= link config_genius/bootstrap.js

  # app/assets/stylesheets/application.scss
    @import 'config_genius/application.css';

  # app/controllers/application_controller.rb
    include PagyConcern
  
  # app/helpers/application_helper.rb
    include ConfigGenius::ApplicationHelper

## Installation
Add this line to your application's Gemfile:

```bash
$  gem 'config_genius', git: 'https://github.com/regiscarlos13/config_genius', branch: 'main'
```

## Contributing
Contribution directions go here.

## License
The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
