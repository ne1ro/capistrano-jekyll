desc 'Jekyll integration'
namespace :jekyll do
  desc 'Build the website using Jekyll'
  task :build do
    on roles(:web) do
      within release_path do
        if defined? Bundler
          execute :bundle, :exec, :jekyll, 'build'
        else
          execute :jekyll, 'build'
        end
      end
    end
  end

  desc 'Print Jekyll deprecation warnings'
  task :doctor do
    on roles(:web) do
      within release_path do
        if defined? Bundler
          execute :bundle, :exec, :jekyll, 'doctor'
        else
          execute :jekyll, 'doctor'
        end     
      end
    end
  end

  after 'deploy:updated', 'jekyll:build'
end
