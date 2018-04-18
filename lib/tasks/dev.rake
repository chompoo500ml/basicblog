namespace :dev do
    desc 'run rails server'
    task :serve do
        sh "bin/rails server -p 9090 -b 0.0.0.0"
    end
end