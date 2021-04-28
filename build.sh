# /bin/sh

openapi-generator generate --generator-name ruby --input-spec 'https://timesheetsapi.svc.lumbry.co.uk/apidocs/1.0.json?type=swagger' --config ruby.config.yaml --template-dir ruby-templates --git-user-id quake-saas --git-repo-id timesheets-client-ruby
