# /bin/sh

# passing the parameter "local" builds against the local instance
if [ "local" = "$1" ]; then
  SOURCE='http://localhost:3001/apidocs/1.0.json?type=swagger'
else
  SOURCE='https://timesheetsapi.svc.lumbry.co.uk/apidocs/1.0.json?type=swagger'
fi

openapi-generator generate --generator-name ruby --input-spec $SOURCE --config ruby.config.yaml --template-dir ruby-templates --git-user-id quake-saas --git-repo-id timesheets-client-ruby
