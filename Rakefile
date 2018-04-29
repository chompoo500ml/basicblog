namespace :sinatra do
  
  desc 'sinatra serve'
  task :serve do
    Dir.chdir("server") do
      sh "bundle exec ruby server.rb"
    end
  end

end

namespace :jekyll do
  
  desc 'jekyll serve'
  task :serve do
    Dir.chdir("client") do
      sh "bundle exec jekyll serve --port=9090 --host=0.0.0.0"
    end
  end
  
  desc 'jekyll build'
  task :build do
    Dir.chdir("client") do
      sh "JEKYLL_ENV=production bundle exec jekyll build"
    end
  end
  
  desc 'jekyll deploying for github pages'
  task :deploy do
    sh "git subtree push --prefix client origin gh-pages"
  end
  
end

task :server => ["sinatra:serve"]
task :client => ["jekyll:serve"]

desc 'git push to github origin/master'
task :push do
  sh "git add ."
  sh "git commit -m #{ENV['m']}"
  sh "git push origin master"
end

task :test1 => ["jekyll:build", "jekyll:serve"]