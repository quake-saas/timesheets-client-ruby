=begin
#TimesheetsApi (params in:body)

# <p>Another API description</p> 

The version of the OpenAPI document: 1.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.1.0

=end

# Pre-define base modules
'Quake::Timesheets'.split('::').reduce(Object) do |previous, mod|
  if previous.const_defined?(mod.to_sym)
    previous.const_get(mod.to_sym)
  else
    previous.const_set(mod.to_sym, Module.new)
  end
end

module Quake::Timesheets
  VERSION = '0.1.3'
end
