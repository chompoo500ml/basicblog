def rake(*args)
  ruby "-S", "rake", *args
end

namespace :basicblog do
    task :client do
      Dir.chdir("client") do
        rake jekyll:serve
      end
    end
end