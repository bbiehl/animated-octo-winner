require 'json'

Given("path {string}") do |string|
  @path = string
end

When("a user requests {string}") do |string|
  @hash = JSON.parse(`curl #{@path}#{string}`)
end

Then("they are returned {string} => {string}") do |key, value|
  expect(@hash[key]).to eq(value)
end
