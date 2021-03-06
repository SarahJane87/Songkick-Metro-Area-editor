# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{gmaps4rails}
  s.version = "0.8.8"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Benjamin Roth", "David Ruyer"]
  s.date = %q{2011-06-10}
  s.description = %q{Enables easy display of items (taken from a Rails 3 model) on a Google Maps (JS API V3). Geocoding + Directions included. Provides much options: markers customization, infowindows, auto-adjusted zoom, polylines, polygons, circles etc... See wiki on github for full description and examples.}
  s.email = ["apnea.diving.deep@gmail.com", "david.ruyer@gmail.com"]
  s.extra_rdoc_files = ["LICENSE.txt", "README.rdoc"]
  s.files = ["app/views/gmaps4rails/_gmaps4rails.html.erb", "lib/acts_as_gmappable/base.rb", "lib/array.rb", "lib/generators/gmaps4rails/install_generator.rb", "lib/generators/templates/README", "lib/gmaps4rails.rb", "lib/gmaps4rails_helper.rb", "lib/hash.rb", "public/images/marker.png", "public/javascripts/gmaps4rails.js", "public/stylesheets/gmaps4rails.css", "LICENSE.txt", "README.rdoc", "test/dummy/app/controllers/application_controller.rb", "test/dummy/app/controllers/users_controller.rb", "test/dummy/app/helpers/application_helper.rb", "test/dummy/app/helpers/users_helper.rb", "test/dummy/app/models/user.rb", "test/dummy/config/application.rb", "test/dummy/config/boot.rb", "test/dummy/config/environment.rb", "test/dummy/config/environments/development.rb", "test/dummy/config/environments/production.rb", "test/dummy/config/environments/test.rb", "test/dummy/config/initializers/backtrace_silencers.rb", "test/dummy/config/initializers/inflections.rb", "test/dummy/config/initializers/mime_types.rb", "test/dummy/config/initializers/secret_token.rb", "test/dummy/config/initializers/session_store.rb", "test/dummy/config/routes.rb", "test/dummy/db/migrate/20110306182914_create_users.rb", "test/dummy/db/migrate/20110430081624_add_addresses_to_users.rb", "test/dummy/db/migrate/20110430083824_remove_address_from_users.rb", "test/dummy/db/schema.rb", "test/dummy/db/seeds.rb", "test/dummy/spec/base/base_spec.rb", "test/dummy/spec/controllers/users_controller_spec.rb", "test/dummy/spec/factories.rb", "test/dummy/spec/models/user_spec.rb", "test/dummy/spec/requests/users_spec.rb", "test/dummy/spec/spec_helper.rb"]
  s.homepage = %q{http://github.com/apneadiving/Google-Maps-for-Rails}
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.5.0}
  s.summary = %q{Enables easy display of items (taken from a Rails 3 model) on a Google Maps (JS API V3). Geocoding + Directions included.}
  s.test_files = ["test/dummy/app/controllers/application_controller.rb", "test/dummy/app/controllers/users_controller.rb", "test/dummy/app/helpers/application_helper.rb", "test/dummy/app/helpers/users_helper.rb", "test/dummy/app/models/user.rb", "test/dummy/config/application.rb", "test/dummy/config/boot.rb", "test/dummy/config/environment.rb", "test/dummy/config/environments/development.rb", "test/dummy/config/environments/production.rb", "test/dummy/config/environments/test.rb", "test/dummy/config/initializers/backtrace_silencers.rb", "test/dummy/config/initializers/inflections.rb", "test/dummy/config/initializers/mime_types.rb", "test/dummy/config/initializers/secret_token.rb", "test/dummy/config/initializers/session_store.rb", "test/dummy/config/routes.rb", "test/dummy/db/migrate/20110306182914_create_users.rb", "test/dummy/db/migrate/20110430081624_add_addresses_to_users.rb", "test/dummy/db/migrate/20110430083824_remove_address_from_users.rb", "test/dummy/db/schema.rb", "test/dummy/db/seeds.rb", "test/dummy/spec/base/base_spec.rb", "test/dummy/spec/controllers/users_controller_spec.rb", "test/dummy/spec/factories.rb", "test/dummy/spec/models/user_spec.rb", "test/dummy/spec/requests/users_spec.rb", "test/dummy/spec/spec_helper.rb"]

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<crack>, [">= 0"])
    else
      s.add_dependency(%q<crack>, [">= 0"])
    end
  else
    s.add_dependency(%q<crack>, [">= 0"])
  end
end
