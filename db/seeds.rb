user1 = User.new(email: 'admin@gmail.com', name: 'Atanas Stoyanov', password: 'admin')
picture = File.new('public/doctor.png')
DoctorProfile.create(specialty: 'Cardiologist', user: user1, picture: picture, workplace: 'Trakia Hospital')

user2 = User.new(email: 'admin2@gmail.com', name: 'Kristina Ivanova', password: 'admin2')
picture2 = File.new('public/doctor2.png')
DoctorProfile.create(specialty: 'Gastroenterologist', user: user2, picture: picture2, workplace: 'SantraMed Hospital')

user3 = User.new(email: 'admin3@gmail.com', name: 'Valentin Petrov', password: 'admin3')
picture3 = File.new('public/doctor3.png')
DoctorProfile.create(specialty: 'Orthopaedic', user: user3, picture: picture3, workplace: 'Medical Centre Saint Sofia')