=begin
#TimesheetsApi (params in:body)

# <p>Another API description</p> 

The version of the OpenAPI document: 1.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.1.0

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for Quake::Timesheets::UpdateEntriesInput
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe Quake::Timesheets::UpdateEntriesInput do
  let(:instance) { Quake::Timesheets::UpdateEntriesInput.new }

  describe 'test an instance of UpdateEntriesInput' do
    it 'should create an instance of UpdateEntriesInput' do
      expect(instance).to be_instance_of(Quake::Timesheets::UpdateEntriesInput)
    end
  end
  describe 'test attribute "person_id"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "start_at"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "end_at"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "quantity"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "unit"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["hour", "day", "week", "month", "other"])
      # validator.allowable_values.each do |value|
      #   expect { instance.unit = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "external_reference"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
