require "rails_reset/version"

module RailsReset

  module Rails
    class Railtie < ::Rails::Railtie
      rake_tasks do
        load "tasks/rails.rake"
      end
    end
  end

end
