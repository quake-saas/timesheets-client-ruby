Timesheets client generator
---

Generation of the Timesheets client depends on the openapi-generator tools. see https://openapi-generator.tech/

To generate a client, install the openapi-generator tools.

```
brew install openapi-generator
```

Once this has been done, you can generate the ruby gem source using the below command:

```
openapi-generator generate -i '<SOURCE>/apidocs/1.0.json?type=swagger' -g ruby -c ruby.config.yaml --minimal-update --template-dir ruby-templates/
```

