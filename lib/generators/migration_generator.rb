class MigrationGenerator < Rails::Generators::base
  source_root File.expand_path('./templates', __FILE__)

  desc 'Generates migrations required for persisted queries'

  def copy_initializer_file
    copy_file "initializer.rb", "config/initializers/#{file_name}.rb"
  end
end
