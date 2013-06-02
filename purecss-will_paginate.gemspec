# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'purecss-will_paginate/version'

Gem::Specification.new do |spec|
  spec.name          = "purecss-will_paginate"
  spec.version       = Purecss::WillPaginate::VERSION
  spec.authors       = ["mseri"]
  spec.email         = ["marcello.seri@gmail.com"]
  spec.description   = %q{Format will_paginate html to match Pure CSS styling.}
  spec.summary       = %q{Hooks into will_paginate to format the html to match Pure CSS (purecss.io) styling.}
  spec.homepage      = "https://github.com/mseri/rails-purecss-will_paginate"
  
  spec.files         = Dir['{lib,config}/**/*']+['README.md', ]
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "purecss"
  spec.add_runtime_dependency "will_paginate"
end
