namespace :db do

  desc 'Run database backfill task'
  task :backfill, [:name] => :environment do |t, args|
    raise 'Please specify backfill task name' unless args[:name]
    Backfiller.logger.level = :info if Backfiller.logger
    Backfiller.run(args[:name])
  end

end
