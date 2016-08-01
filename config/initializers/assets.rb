require 'pathname'
# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path
# Rails.application.config.assets.paths << Emoji.images_path

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in app/assets folder are already added.
# Rails.application.config.assets.precompile += %w( search.js )
Rails.application.config.assets.precompile << Proc.new do |filename, path|
  if %w(.js .css).include?(File.extname(filename)
    app_assets_path = Rails.root.join('app', 'assets').to_s
    if path.start_with? app_assets_path
      puts "including asset: " + path
      true
    else
      puts "excluding asset: " + path
      false
    end
  else
    false
  end
end
