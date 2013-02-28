require "spec_helper"

describe "rails:reset" do
  include_context "rake"

  DEFAULT_TASKS = ['db:migrate:reset', 'db:seed', 'db:test:prepare']

  before do
    DEFAULT_TASKS.each do |cmd|
      Rake::Task.define_task(cmd)
    end
  end

  its(:prerequisites) { should include("environment") }

  DEFAULT_TASKS.each do |cmd|

    it "should invoke: #{cmd}" do

      Rake::Task[cmd].should_receive(:invoke)
      subject.invoke

    end

  end

  context 'with sunspot defined' do

    before do
      Sunspot = mock 'Sunspot'
      Rake::Task.define_task('sunspot:reindex')
    end

    it "should invoke: sunspot:reindex" do

      Rake::Task['sunspot:reindex'].should_receive(:invoke)
      subject.invoke

    end

  end

end