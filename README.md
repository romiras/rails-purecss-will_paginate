# Purecss::WillPaginate

Rails Engine that extends [will_paginate][wp] stylings to match the pagination styling conventions 
in [Pure CSS][pc] toolkit.

Check the gem [purecss](https://github.com/mseri/rails-purecss) to include Pure in the Rails Asset Pipeline.

[![Build Status](https://travis-ci.org/mseri/rails-purecss-will_paginate.png?branch=master)](https://travis-ci.org/mseri/rails-purecss-will_paginate.png?branch=master)


## Installation

Add this line to your application's Gemfile:

    gem 'purecss-will_paginate'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install purecss-will_paginate

### Usage

Just like you would in the regular [will_paginate][wp].  If you've got a need to use the default will_paginate stylings,
pass an option like so:

    <%= will_paginate(@things, :renderer => WillPaginate::ActionView::LinkRenderer) %>

Based on [bootstrap-will_paginate](https://github.com/yrgoldteeth/bootstrap-will_paginate).

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

[wp]: http://github.com/mislav/will_paginate
[pc]: http://purecss.io

## Changelog 
- 0.0.2 Fixed dependencies
- 0.0.1 First version
