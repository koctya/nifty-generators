class NiftyLayoutGenerator < Rails::Generator::Base
  def initialize(runtime_args, runtime_options = {})
    super
    @name = @args.first || 'application'
  end

  def manifest
    record do |m|
      m.directory 'app/views/layouts'
      m.directory 'app/assets/stylesheets'
      m.directory 'app/helpers'

      if options[:haml]
        m.template "layout.html.erb", "app/views/layouts/#{file_name}.html.erb"
        m.file     "stylesheet.css",  "app/assets/stylesheets/#{file_name}.css"
      else
        m.directory 'public/stylesheets/sass'
        m.template "layout.html.haml", "app/views/layouts/#{file_name}.html.haml"
        m.file     "stylesheet.sass",  "app/assets/stylesheets/#{file_name}.sass"
      end
      m.file "helper.rb", "app/helpers/layout_helper.rb"
    end
  end

  def file_name
    @name.underscore
  end

  protected

    def add_options!(opt)
      opt.separator ''
      opt.separator 'Options:'
      opt.on("--erb", "Generate HAML for view, and SASS for stylesheet.") { |v| options[:erb] = v }
    end

    def banner
      <<-EOS
Creates generic layout, stylesheet, and helper files.

USAGE: #{$0} #{spec.name} [layout_name]
EOS
    end
end
