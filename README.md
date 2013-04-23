# OpenUriRedirections 

This gem applies a patch to OpenURI to optionally allow redirections from HTTP to HTTPS, or from HTTPS to HTTP.

This is based on [this patch](http://bugs.ruby-lang.org/issues/859), and modified to allow redirections in both directions.

Here is the problem it tries to solve:

    $ irb
    1.9.2p320 :001 > require 'open-uri'
    => true 
    1.9.2p320 :002 > open('http://github.com')
    RuntimeError: redirection forbidden: http://github.com -> https://github.com/

And here is how you can use this patch to follow the redirections:

    $ irb
    1.9.2p320 :001 > require 'open-uri'
    => true 
    > require 'open-uri-redirections'
    => true 
    1.9.2p320 :002 > open('http://github.com', :allow_redirections => :safe)
    => #<File:/var/folders/...>

The patch contained in this gem adds the :allow_redirections option to `OpenURI#open`:

* `:allow_redirections => :safe` will allow HTTP => HTTPS redirections.
* `:allow_redirections => :all`  will allow HTTP => HTTPS redirections and HTTPS => HTTP redirections.

## Understand what you're doing

Before using this gem, read this:

### Original gist URL:
[https://gist.github.com/1271420](https://gist.github.com/1271420)

### Relevant issue:
[http://redmine.ruby-lang.org/issues/3719](http://redmine.ruby-lang.org/issues/3719)

### Source here:
[https://github.com/ruby/ruby/blob/trunk/lib/open-uri.rb](https://github.com/ruby/ruby/blob/trunk/lib/open-uri.rb)

Use it at your own risk!

## Installation

Add this line to your application's Gemfile:

    gem 'open-uri-redirections'

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install open-uri-redirections

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
