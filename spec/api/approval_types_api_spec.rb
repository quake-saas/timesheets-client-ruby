=begin
#TimesheetsApi (params in:formData)

# <p>Another API description</p> 

The version of the OpenAPI document: 1.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.1.0

=end

require 'spec_helper'
require 'json'

# Unit tests for Quake::Timesheets::ApprovalTypesApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'ApprovalTypesApi' do
  before do
    # run before each test
    @api_instance = Quake::Timesheets::ApprovalTypesApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ApprovalTypesApi' do
    it 'should create an instance of ApprovalTypesApi' do
      expect(@api_instance).to be_instance_of(Quake::Timesheets::ApprovalTypesApi)
    end
  end

  # unit tests for get_api_v1_approval_types
  # Search for approval types matching filters
  # @param [Hash] opts the optional parameters
  # @option opts [String] :dataset_id Filter to the approval types belonging to one of the identified datasets
  # @return [Array<ApprovalType>]
  describe 'get_api_v1_approval_types test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for post_api_v1_approval_types
  # Create a new Approval Type
  # @param weight The weight provided by approvals of this type
  # @param name The name of the approval type
  # @param dataset_id ID of the dataset this approval type is linked to
  # @param [Hash] opts the optional parameters
  # @return [ApprovalType]
  describe 'post_api_v1_approval_types test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
