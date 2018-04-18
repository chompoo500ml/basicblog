namespace :server do
    desc 'run rails server'
    task :start do
        sh "bundle exec rails server -p 9090 -b 0.0.0.0"
    end
end