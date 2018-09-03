user1 = User.new(email: 'admin@gmail.com', name: 'Atanas Stoyanov', password: 'admin')
picture = File.new('public/doctor.png')
DoctorProfile.create(specialty: 'Cardiologist', user: user1, picture: picture, workplace: 'Trakia Hospital')

user2 = User.new(email: 'admin2@gmail.com', name: 'Kristina Ivanova', password: 'admin2')
picture2 = File.new('public/doctor2.png')
DoctorProfile.create(specialty: 'Gastroenterologist', user: user2, picture: picture2, workplace: 'SantraMed Hospital')

user3 = User.new(email: 'admin3@gmail.com', name: 'Valentin Petrov', password: 'admin3')
picture3 = File.new('public/doctor3.png')
DoctorProfile.create(specialty: 'Orthopaedic', user: user3, picture: picture3, workplace: 'Medical Centre Saint Sofia')

# "Born and raised in Stara Zagora, Bulgaria.

# Graduated from Romaind Rolland Foreign Language School in 2001.

# High School Profile: English with German.

# Graduated from Sofia University and acquired my medical degree in 2007.

# Started specialization in Gastroenterology in autumn 2008.

# Started working at SantraMed Hospital in 2009.


# Attended European Gastroenterology conference in Berlin, Germany in 2010.

# Attended two Gastroenterology seminars in Athens, Greece in 2011, 2012.

# Member of Bulgarian Gastroenterology association since 2012.

# Member of Bulgarian Healthcare association since 2013.

# Co-author of several scientific pieces of work in the field of Gastroenterology.

# Assistant teacher at Faculty of Medicine, Sofia University since 2015.

# Languages: English, German, Russian.
# "