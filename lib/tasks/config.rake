namespace :config do
    desc 'set config for development environment'
    task :dev do
        FileUtils.cp 'public/js/config-dev.js', 'public/js/config.js'
    end
    
    desc 'set config for production environment'
    task :prod do
        FileUtils.cp 'public/js/config-prod.js', 'public/js/config.js'
    end
end