# Expose

Helper method to encapsulate the pattern of exposing attributes through
the controller as helper methods.

Works with rails 3 and 4.

## Installation

Add this line to your application's Gemfile:

    gem 'expose', github: 'everydayhero/expose'

And then execute:

    $ bundle

## Usage

``` ruby
class MyController < ApplicationController
  expose :my, :attributes

  private

  def my
    @my ||= expensive_calulation
  end

  def attributes
    @attributes ||= expensive_calulation
  end
end
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
