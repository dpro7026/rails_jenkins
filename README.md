# Rails
Create a new git repo.</br>

Create a new Rails app without a database:
```
rails new myapp --skip-activerecord
```

## Adding RSpec and Jenkins for Automated Testing
Add to the `Gemfile` into the group :development, :test do:
```
# TDD testing
gem 'rspec-rails'
```
Install the gem:
```
bundle install
```
Generate the RSpec configuration:
```
rails generate rspec:install
```
Ensure the correct version of RSpec is used:
```
bundle binstubs rspec-core
```

Create a new folder `spec/features` and a new file inside it `main_spec.rb`.</br>
Add the following to this file:
```
require 'rails_helper'

RSpec.feature "Creating Home Page" do
  scenario do
    visit '/'

    expect(page).to have_content('Home')

  end
end
```
Now create a homepage controller and views:
```
rails generate controller Homepage index
```
Update the `config/routes.rb` to include:
```
root 'homepage#index'
```
