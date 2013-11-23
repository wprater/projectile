unless defined?(Motion::Project::Config)
  raise "This file must be required within a RubyMotion project Rakefile."
end

Motion::Project::App.setup do |app|
  app.vendor_project(File.join(File.dirname(__FILE__), '../vendor/BSONIdGenerator'),
                     :static)

  Dir.glob(File.join(File.dirname(__FILE__), 'projectile/*.rb')).each do |file|
    app.files.unshift(file)
  end
end
