namespace :rails do

  desc "Reset your development and test environment."

  task :reset => :environment do

    ## Reset database, perform seeds and prepare test database

    ['db:migrate:reset', 'db:seed', 'db:test:prepare'].each do |cmd|

      p "Invoking: rake #{cmd}"

      Rake::Task[cmd].invoke

    end

    ## Reindex solr index if Sunspot is defined

    if defined?(Sunspot)
      p "Invoking: sunspot:reindex"

      Rake::Task['sunspot:reindex'].invoke
    end

  end

end