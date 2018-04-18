namespace :git do
    desc 'git commit'
    task :commit do
        sh "git add ."
        sh "git commit -m #{ENV['m']}"
        sh "git push"
    end

    desc 'publish all files in public folder to gh-pages branch'
    task :publish do
        sh "git subtree push --prefix public origin gh-pages"
    end
    
    desc 'deploy all files to heroku'
    task :deploy do
        sh "git push heroku master"
    end
end