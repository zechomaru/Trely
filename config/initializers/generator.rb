Rails.application.config.generators do |generate|
	generate.helper false
 	generate.javascript_engine false
 	generate.request_specs false
 	generate.routing_specs false
 	generate.stylesheets false
# 	generate.test_framework :minitest, spec: true, fixture: true
# 	generate.test_framework :minitest, spec: true, fixture: true
# #	generate.views_specs false
end