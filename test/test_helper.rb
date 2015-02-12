ENV['RAILS_ENV'] ||= 'test'
require 'simplecov'
SimpleCov.start
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'
require 'minitest/rails'
require 'minitest/rails/capybara'
require 'capybara/poltergeist'

module ActiveSupport
  class TestCase
    fixtures :all
    include Capybara::DSL
    Capybara.javascript_driver = :poltergeist

    def sign_in(user)
      visit new_user_session_path
      fill_in 'Email', with: users(user).email
      fill_in 'Password', with: 'password'
      click_on 'Log in'
    end
  end
end
