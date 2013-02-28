# spec/support/shared_contexts/rake.rb
require "rake"

shared_context "rake" do
  let(:rake)      { Rake::Application.new }
  let(:task_name) { self.class.top_level_description }
  let(:task_path) { "lib/tasks/#{task_name.split(":").first}" }
  subject         { rake[task_name] }

  before do
    Rake.application = rake
    load "#{task_path}.rake"

    Rake::Task.define_task(:environment)
  end
end