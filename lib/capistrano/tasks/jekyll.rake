desc 'Jekyll integration'
namespace :jekyll do
  # after 'deploy:published', :build
end

namespace :load do
  task :defaults do
    set :jekyll_config, '_config.yml'
  end
end
