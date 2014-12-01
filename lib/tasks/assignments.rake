namespace :assignments do
  desc "cleanup"
  task cleanup: :environment do
    Assignment.where.not(person_id: Person.pluck(:id)).delete_all
    Assignment.where.not(location_id: Location.pluck(:id)).delete_all
  end
end
