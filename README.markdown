# Nifty Generators

A collection of useful Rails generator scripts for scaffolding, layout files, authentication, and more.


## Setup

### Rails 3.1

Add the gem to your Gemfile.

  gem "nifty-generators", :group => :development

Then you can run any of the included generators.

  rails g nifty:scaffold Recipe name:string index new

### Rails 3.0, 2.x 
Try using Ryanb's version at http://github.com/ryanb/nifty-generators
### Included Generators

- nifty:layout: generates generic layout, stylesheet, and helper files.
- nifty:scaffold: generates a controller and optional model/migration.
- nifty:config: generates a config YAML file and loader.
- nifty:authentication: generates user model with sign up and log in.

To view the README for each generator, run it with the +help+ option.

    rails g nifty:layout --help


## Troubleshooting and FAQs

**What is the difference between nifty:scaffold and built-in scaffold?**

One of the primary differences is that nifty:scaffold allows you to choose which controller actions to generate.

  rails g nifty:scaffold post name:string index new edit

There are a few changes to the generated code as well, such as no XML format by default.

It also offers support for HAML, Shoulda, and RSpec.


<b>I get "undefined method 'title'" error.</b>

Try running nifty:layout, that will generate this helper method. Or you can just change the templates to whatever approach you prefer for setting the title.


<b>I can't set new attributes in my model.</b>

Add the attribute to the attr_accessible line in the model.


<b>I get "undefined method 'root_url'" error.</b>

Some generators default redirecting to the root_url. Set this in your routes.rb file like this (substituting your controller name).

  root :to => "home#index"


<b>I get a missing database error.</b>

Run <tt>rake db:migrate</tt>.


<b>I get a routing error when I try to submit a form.</b>

Try restarting your development server. Sometimes it doesn't detect the change in the routing.


<b>The tests/specs don't work.</b>

Make sure you have mocha installed and require it in your spec/test helper.

  gem install mocha

  # in spec_helper.rb
  config.mock_with :mocha

  # in test_helper.rb
  require 'mocha'

Also, make sure you're using Rails 2.1 or greater.


## Project Status

Unfortunately I have not had time to actively work on this project recently. If you find a critical issue where it does not work as documented please {ping me on Twitter}[http://twitter.com/rbates] and I'll take a look.

## Changelog
#### 0.4.8
- forked from ryanb version
- updated to rails 3.1.x
- changed default template to haml/sass
- changed README to markdown


## Found a bug?

If you are having a problem with Nifty Generators, first look at the FAQs above. If you still cannot resolve it, please submit an issue here.

http://github.com/ryanb/nifty-generators/issues


## Development

If you want to contribute to this project, you can download the Git repository and get the Cucumber features running by calling +bundle+ then +rake+. I normally develop this using Ruby 1.9.2 however it should work with 1.8.7 as well.

The Rails 3 generators are located under <tt>lib/generators</tt> and are tested with Cucumber. The older Rails 2 generators are under <tt>rails_generators</tt> and are tested with Shoulda under the <tt>test</tt> directory.
