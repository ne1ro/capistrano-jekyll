desc 'Jekyll integration'
namespace :jekyll do
  desc 'Build your website'
  task :build do
    on roles(:web) do
      within current_path do
        execute :jekyll, 'build'
      end
    end
  end

  desc 'Search site and print specific deprecation warnings'
  task :doctor do
    on roles(:web) do
      within current_path do
        execute :jekyll, 'doctor'
      end
    end
  end

  desc 'Creates a new Jekyll site scaffold in PATH'
  task :new do
    on roles(:web) do
      within current_path do
        execute :jekyll, 'new'
      end
    end
  end

  after 'deploy:published', :build
end
