=begin
#TimesheetsApi (params in:formData)

# <p>Another API description</p> 

The version of the OpenAPI document: 1.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.1.0

=end

require 'spec_helper'
require 'json'

# Unit tests for Quake::Timesheets::ApprovalsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'ApprovalsApi' do
  before do
    # run before each test
    @api_instance = Quake::Timesheets::ApprovalsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ApprovalsApi' do
    it 'should create an instance of ApprovalsApi' do
      expect(@api_instance).to be_instance_of(Quake::Timesheets::ApprovalsApi)
    end
  end

  # unit tests for get_api_v1_approvals
  # Search for approval types matching filters
  # @param dataset_id Filter to the approvals belonging to one of the identified datasets
  # @param [Hash] opts the optional parameters
  # @return [Array<Approval>]
  describe 'get_api_v1_approvals test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for post_api_v1_approvals
  # Create a new Approval
  # @param state 
  # @param approval_type_id The ID of the Approval Type of this Approval
  # @param entry_id The ID of the Entry this Approval is linked to
  # @param dataset_id ID of the dataset this approval type is linked to
  # @param [Hash] opts the optional parameters
  # @return [Approval]
  describe 'post_api_v1_approvals test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
