# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

puts "Starting Seeds"

trainer = User.new( first_name: 'Alex', last_name: 'Morgan', email: 'alex@example.com', 
                   profile_pic: File.new("#{Rails.root}/app/assets/images/icons/profile.png"),
                   password: 'tr@iner123', password_confirmation: 'tr@iner123',
                   bio: 'Alex Morgan is a soccer player and olympic gold medalist. She is the 6th and youngest US soccer player to score 20 goals in a year. US soccer athlete of the year and FIFA world player of year finalist. See profile')
trainer.skip_confirmation!
trainer.save

6.times do |i|
  p = Program.create(trainer: trainer, name: "example #{i}", trending: true, price: 34.43, rating: 3.3, difficulty: 'medium',
                     overview_text: 'This program will get your body in FAT BURNING mode, speed up your metabolism and get processed foods out of your system! I will guide you through setting your personal goals, figuring out what foods to eat and how much, as well as workouts that will kick your butt into shape! After years as a professional athlete, I’ve combined some of the best principles that have worked for me and other elite athletes.
                    
                    Whether you are a current athlete, haven’t worked out in a while or are a beginner, all levels will benefit from learning how to get your body moving in an entirely new way. My method of movement is probably different to what you do.',
                     equipment_required: 'For beginners and intermediates. Doesn’t require any equipment.' )
end
puts "Done Seeding"
