namespace :server do
    desc 'run rails server'
    task :start do
        FileUtils.cp 'public/js/config-dev.js', 'public/js/config.js'
        sh "bundle exec rails server -p 9090 -b 0.0.0.0"
    end
end