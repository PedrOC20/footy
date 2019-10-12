# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Destroying all group members"
GroupMember.destroy_all

puts "Destroying all groups"
Group.destroy_all

puts "Destroying all chat_rooms"
ChatRoom.destroy_all

puts "Destroying all fields"
Field.destroy_all

puts "Destroying all users"
User.destroy_all



puts "Creating new users Owner"

# user = User.create!(
#   role: "Owner",
#   email: "@gmail.com",
#   password: "123456",
#   first_name: "",
#   last_name: "",
#   birth_date: "ano-mes-dia",
#   avatar_remote_url: ''
# )

user1 = User.create!(
  role: "Owner",
  email: "luis_vieira@gmail.com",
  password: "123456",
  first_name: "Luís",
  last_name: "Vieira",
  username: "Orelhas",
  birth_date: "1949-06-22",
  remote_avatar_url: 'https://cdn5.jornaldenegocios.pt/images/2019-07/img_817x460$2019_07_26_11_33_53_358120.jpg'
)

user2 = User.create!(
  role: "Owner",
  email: "godinho_lopes@gmail.com",
  password: "123456",
  first_name: "Godinho",
  last_name: "Lopes",
  birth_date: "1952-04-21",
  remote_avatar_url: 'https://cdn.record.pt/images/2018-07/img_920x518$2018_07_02_19_00_23_1418543.jpg'
)

user3 = User.create!(
  role: "Owner",
  email: "luis_figo@gmail.com",
  password: "123456",
  first_name: "Luís",
  last_name: "Figo",
  username: "pesetero",
  birth_date: "1972-11-04",
  remote_avatar_url: 'https://upload.wikimedia.org/wikipedia/commons/8/82/L._Figo_2017_%28cropped%29.jpg'
)

user4 = User.create!(
  role: "Owner",
  email: "antonio_oliveira@gmail.com",
  password: "123456",
  first_name: "António",
  last_name: "Oliveira",
  birth_date: "1952-06-10",
  remote_avatar_url: 'https://www.iol.pt/multimedia/oratvi/multimedia/imagem/id/1722770/960'
)

user5 = User.create!(
  role: "Owner",
  email: "valentim_loureiro@gmail.com",
  password: "123456",
  first_name: "Valentim",
  last_name: "Loureiro",
  username: "Major",
  birth_date: "1938-12-24",
  remote_avatar_url: 'https://cdn1.newsplex.pt/media/2017/5/31/587826.png?type=artigo'
)

user6 = User.create!(
  role: "Owner",
  email: "frederico_varandas@gmail.com",
  password: "123456",
  first_name: "Frederico",
  last_name: "Varandas",
  birth_date: "1979-09-19",
  remote_avatar_url: 'https://jornaldiario.pt/wp-content/uploads/2019/01/img_920x5182018_08_27_15_45_32_1440630.jpg'
)

user7 = User.create!(
  role: "Owner",
  email: "jorge_costa@gmail.com",
  password: "123456",
  first_name: "Jorge",
  last_name: "Pinto da Costa",
  username: "Pitinho",
  birth_date: "1937-12-28",
  remote_avatar_url: 'http://images-cdn.impresa.pt/caras/2017-09-24-0.jpg?v=w870h555'
)

user8 = User.create!(
  role: "Owner",
  email: "carlos_pereira@gmail.com",
  password: "123456",
  first_name: "Carlos",
  last_name: "Pereira",
  birth_date: "1952-07-28",
  remote_avatar_url: 'https://thumbs.web.sapo.io/?epic=ZTZhxk8nIcTt+IeSj1Nz74ZIxRQt6bMi66awPFBxv0iZY2idsy0IweSua63W7n3WEVe60U2jLh/37bDmKB2n0zNGD3MztQCyaYFwPoT1wrJ5b18=&W=1550&H=0&delay_optim=1'
)

user9 = User.create!(
  role: "Owner",
  email: "bruno_carvalho@gmail.com",
  password: "123456",
  first_name: "Bruno",
  last_name: "Carvalho",
  birth_date: "1972-02-08",
  remote_avatar_url: 'https://cdn.record.pt/images/2018-07/img_920x518$2018_07_04_12_21_21_1419191.jpg'
)

user10 = User.create!(
  role: "Owner",
  email: "footyapplewagon@gmail.com",
  password: "123456",
  first_name: "Footy",
  last_name: "App",
  username: "Footy",
  birth_date: "2019-09-01",
  remote_avatar_url: 'https://www.gmcrafts.co.uk/wp-content/uploads/2018/11/Football-Main-Product-Image.jpg'
)

puts "Created Owners"


puts "Creating new users Player"

# user = User.create!(
#   role: "Player",
#   email: "@gmail.com",
#   password: "123456",
#   first_name: "",
#   last_name: "",
#   username: "",
#   birth_date: "ano-mes-dia",
#   foot: "Right",
#   position: "Defense",
#   remote_avatar_url: ''
# )

user11 = User.create!(
  role: "Player",
  email: "pedrocbva@gmail.com",
  password: "123456",
  first_name: "Pedro",
  last_name: "Andrade",
  birth_date: "1998-05-04",
  foot: "Right",
  position: "Defense",
  remote_avatar_url: 'https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/dzizijdgey43gmb8ybza.jpg'
)

user12 = User.create!(
  role: "Player",
  email: "miguelpfigueiredo@gmail.com",
  password: "123456",
  first_name: "Miguel",
  last_name: "Figueiredo",
  birth_date: "1994-01-24",
  remote_avatar_url: 'https://avatars3.githubusercontent.com/u/40830749?v=4'
)

user13 = User.create!(
  role: "Player",
  email: "vianney.thomasset@gmail.com",
  password: "123456",
  first_name: "Vianney",
  last_name: "Thomasset",
  birth_date: "1994-07-10",
  remote_avatar_url: 'https://avatars0.githubusercontent.com/u/52930791?v=4'
)

user14 = User.create!(
  role: "Player",
  email: "pedromiguelcandeias@gmail.com",
  password: "123456",
  first_name: "Pedro",
  last_name: "Candeias",
  birth_date: "1988-05-31",
  foot: "Right",
  position: "Defense",
  remote_avatar_url: 'https://avatars3.githubusercontent.com/u/52099157?s=400&v=4'
)

user15 = User.create!(
  role: "Player",
  email: "cristiano_ronaldo@gmail.com",
  password: "123456",
  first_name: "Cristiano",
  last_name: "Ronaldo",
  username: "Champ",
  birth_date: "1985-02-05",
  foot: "Right",
  position: "Forward",
  remote_avatar_url: 'https://www.noticiasdecoimbra.pt/wp-content/uploads/2019/06/cristiano-ronaldo-liga-das-na%C3%A7%C3%B5es.jpg?x75216'
)

user16 = User.create!(
  role: "Player",
  email: "deco@gmail.com",
  password: "123456",
  first_name: "Anderson",
  last_name: "Souza",
  username: "Deco",
  birth_date: "1977-08-27 ",
  foot: "Right",
  position: "Midfielder",
  remote_avatar_url: 'https://static-img.zz.pt/history/imgS620I11694T20190325175353.jpg'
)

user17 = User.create!(
  role: "Player",
  email: "trivela@gmail.com",
  password: "123456",
  first_name: "Ricardo",
  last_name: "Quaresma",
  username: "Ciganinho",
  birth_date: "1983-09-26",
  foot: "Right",
  position: "Forward",
  remote_avatar_url: 'https://thumbs.web.sapo.io/?epic=MzU5M8bHI4vUyYFaO+YIATqaLsRgao0fAz2HBv566bDWrHeqoltoM84OEBBjpHoOjY9xn+8eBBUCp78GBteA8cXriXiqysHrfmWxYdnbsH3+cQU=&W=1550&H=0&delay_optim=1'
)

user18 = User.create!(
  role: "Player",
  email: "coentros@gmail.com",
  password: "123456",
  first_name: "Fábio",
  last_name: "Coentrão",
  username: "Figo da Vila",
  birth_date: "1988-03-11",
  foot: "Left",
  position: "Defense",
  remote_avatar_url: 'https://www.abola.pt//img/fotos/abola2015/RIOAVE/2018/fabiocoentrao6.jpg'
)

user19 = User.create!(
  role: "Player",
  email: "paim@gmail.com",
  password: "123456",
  first_name: "Fábio",
  last_name: "Paím",
  username: "Dorgas",
  birth_date: "1988-02-15",
  foot: "Right",
  position: "Forward",
  remote_avatar_url: 'https://www.iol.pt/multimedia/oratvi/multimedia/imagem/id/58136d1a0cf2d549d555ed01/800'
)

user20 = User.create!(
  role: "Player",
  email: "pizzi@gmail.com",
  password: "123456",
  first_name: "Luís",
  last_name: "Fernandes",
  username: "Pizzi",
  birth_date: "1989-10-06",
  foot: "Right",
  position: "Midfielder",
  remote_avatar_url: 'https://thumbs.web.sapo.io/?epic=YjM0nhwLJDFnSHvAE/DyaT7ickMIkNizNT0vYsuVCyUM7ZqXrKQCRfX3qOBLWpFPC6QfO2svC3ZrZk4faQ3T4YmVTgY9a6emy1y5qfUaju9Yvjc=&W=1550&H=0&delay_optim=1'
)

user21 = User.create!(
  role: "Player",
  email: "nani@gmail.com",
  password: "123456",
  first_name: "Luís",
  last_name: "Cunha",
  username: "Nani",
  birth_date: "1986-11-17",
  foot: "Right",
  position: "Forward",
  remote_avatar_url: 'https://upload.wikimedia.org/wikipedia/commons/3/3a/New_Zealand-Portugal_Nani.jpg'
)

user22 = User.create!(
  role: "Player",
  email: "maniche@gmail.com",
  password: "123456",
  first_name: "Nuno",
  last_name: "Ribeiro",
  username: "Maniche",
  birth_date: "1977-11-11",
  foot: "Right",
  position: "Midfielder",
  remote_avatar_url: 'https://tmssl.akamaized.net//images/portrait/header/9822-1486128348.jpg?lm=1486128361'
)

user23 = User.create!(
  role: "Player",
  email: "alves@gmail.com",
  password: "123456",
  first_name: "Bruno",
  last_name: "Alves",
  birth_date: "1981-11-27",
  foot: "Right",
  position: "Defense",
  remote_avatar_url: 'https://cdn.record.pt/images/2018-07/img_920x518$2018_07_12_09_49_05_1422659.jpg'
)

user24 = User.create!(
  role: "Player",
  email: "sabrosa@gmail.com",
  password: "123456",
  first_name: "Simão",
  last_name: "Sabrosa",
  birth_date: "1979-08-31",
  foot: "Right",
  position: "Forward",
  remote_avatar_url: 'https://www.iol.pt/multimedia/oratvi/multimedia/imagem/id/12032507/960'
)

user25 = User.create!(
  role: "Player",
  email: "renato@gmail.com",
  password: "123456",
  first_name: "Renato",
  last_name: "Sanches",
  birth_date: "1997-08-18",
  foot: "Right",
  position: "Midfielder",
  remote_avatar_url: 'https://www.opinantes.pt/wp-content/uploads/2017/09/renato-sanches.jpg'
)

user26 = User.create!(
  role: "Player",
  email: "beto@gmail.com",
  password: "123456",
  first_name: "António",
  last_name: "Pimparel",
  username: "Beto",
  birth_date: "1982-05-01",
  foot: "Right",
  position: "Goalkeeper",
  remote_avatar_url: 'https://cdn.record.pt/images/2018-11/img_920x518$2018_11_20_22_06_23_1474629.jpg'
)

user27 = User.create!(
  role: "Player",
  email: "bebe@gmail.com",
  password: "123456",
  first_name: "Tiago",
  last_name: "Correia",
  username: "Bebé",
  birth_date: "1990-07-12",
  foot: "Right",
  position: "Forward",
  remote_avatar_url: 'https://thumbs.web.sapo.io/?epic=MjI3BI3LNg0AjMyrwGv3R9Z7YqqJ9YUQ8TdmTbBWRAsnRyNAgEo6tkqOu2HNQ3I8GsnrcS/ujFSCk/KCQixFyB7y4w==&W=1550&H=0&delay_optim=1'
)

user28 = User.create!(
  role: "Player",
  email: "pepe@gmail.com",
  password: "123456",
  first_name: "Képler",
  last_name: "Ferreira",
  username: "Pepe",
  birth_date: "1983-02-26",
  foot: "Right",
  position: "Defense",
  remote_avatar_url: 'https://upload.wikimedia.org/wikipedia/commons/4/4c/Russia-Portugal_CC2017_%2811_%28cropped%29.jpg'
)

user29 = User.create!(
  role: "Player",
  email: "ukra@gmail.com",
  password: "123456",
  first_name: "André",
  last_name: "Monteiro",
  username: "Ukra",
  birth_date: "1988-03-16",
  foot: "Right",
  position: "Forward",
  remote_avatar_url: 'https://images.impresa.pt/olimpia/2016-10-20-untitled-3-3185/original/mw-1920'
)

user30 = User.create!(
  role: "Player",
  email: "pele@gmail.com",
  password: "123456",
  first_name: "Vitor",
  last_name: "Passos",
  username: "Pelé",
  birth_date: "1987-09-14",
  foot: "Right",
  position: "Midfielder",
  remote_avatar_url: 'https://www.pronounceitright.com/upload/pronuncia/5289/0000245.jpg'
)

user31 = User.create!(
  role: "Player",
  email: "tarantini@gmail.com",
  password: "123456",
  first_name: "Ricardo",
  last_name: "Monteiro",
  username: "Tarantini",
  birth_date: "1983-10-07",
  foot: "Right",
  position: "Midfielder",
  remote_avatar_url: 'https://jornaleconomico.sapo.pt/wp-content/uploads/2018/01/tarantini-rio-ave.jpg?w=850&h=531&q=60&compress=auto,format&fit=crop'
)

puts "Created Players"


puts "Creating new fields"
# field = Field.create!(
#   name: "",
#   location: "",
#   field_size: ,
#   field_type: "",
#   parking: false,
#   locker_room: true,
#   indoor: false,
#   description: "",
#   user: user,
#   remote_photo_url: ''
# )

field1 = Field.create!(
  name: "Estádio Sport Lisboa e Benfica",
  location: "Avenida Eusébio da Silva Ferreira/2ª Circular, Benfica, Área Metropolitana de Lisboa, Portugal",
  field_size: 11,
  field_type: "Grass",
  parking: true,
  locker_room: true,
  indoor: false,
  description: "Estádio da Luz, officially named Estádio do Sport Lisboa e Benfica, was built to provide Benfica with a new and modern home, and to serve as the playing venue for the Euro 2004 final. Estádio da Luz got built in place of the old Estádio da Luz. Construction works started in 2002, and in March 2003 Benfica played their last game at the partly demolished old stadium. The new stadium opened on the 25th of October 2003 with a match between Benfica and Uruguayan side Club Nacional (2-1). During the Euro 2004 Championships, Estadio da Luz hosted three group matches, the quarter-final between Portugal and England (2-2), and the final between Greece and Portugal (1-0). In 2014, the stadium hosted the Champions League final between Real Madrid and Atletico Madrid (4-1).",
  user: user1,
  remote_photo_url: 'https://www.stadiumguide.com/wp-content/uploads/lisboa_top.jpg'
)

field2 = Field.create!(
  name: "Pavilhão Fidelidade",
  location: "Avenida Eusébio da Silva Ferreira/2ª Circular, Benfica, Área Metropolitana de Lisboa, Portugal",
  field_size: 5,
  field_type: "Wood",
  parking: true,
  locker_room: true,
  indoor: true,
  description: "The Pavilhão Fidelidade is the one with the largest capacity (2,400 seats), with an oval shaped metal cover, acoustically prepared to nullify the reflection of the sound, draining and releasing it. Futsal, roller hockey and basketball are the ways to use this venue. It has 2 floors, 4 stands, press room, Presidential Tribune and 1 Megascreen.",
  user: user1,
  remote_photo_url: 'https://media.slbenfica.pt/-/media/benficadp/images/generic_content_pages/espacos/comp_desportivo/images/pavilhao_fidelidade_meio.jpg?la=pt-pt&v=636470482650000000&hash=E67BBA377F8B0B9BDE0631F04DFC37464D996E0C'
)

field3 = Field.create!(
  name: "Pavilhão n.º 2",
  location: "Avenida Eusébio da Silva Ferreira/2ª Circular, Benfica, Área Metropolitana de Lisboa, Portugal",
  field_size: 5,
  field_type: "Wood",
  parking: true,
  locker_room: true,
  indoor: true,
  description: "Pavilhão n.º 2 has some differences with respect to Fidelity. With a parabolic metal roof, it has a capacity of 1,800 people. It has 2 side benches, press room and Presidential Tribune. The most selected options for using this complex are handball and volleyball. Futsal also uses this feature frequently.",
  user: user1,
  remote_photo_url: 'http://zerozero.co.mz/img/estadios/717/48717_ori_pavilhao_n_2_do_sport_lisboa_e_benfica.jpg'
)

field4 = Field.create!(
  name: "Caixa Futebol Campus",
  location: "Caixa Futebol Campus, 2840-600 Seixal",
  field_size: 11,
  field_type: "Grass",
  parking: true,
  locker_room: true,
  indoor: false,
  description: "Caixa Futebol Campus is the training and training center of Sport Lisboa e Benfica and is the home of Benfica B. It has nine soccer fields and the main field has 1600 covered seats. It is mainly used by the first team and by the teams.",
  user: user1,
  remote_photo_url: 'https://media.slbenfica.pt/-/media/benficadp/images/departamento-de-comunicacao/epoca_2017_2018/caixa-futebol-campus/caixa-futebol-campus-campo-1-new.jpg?h=742&la=pt-PT&w=1320&v=636549123140000000&hash=49639CB7106DE1739466D5CB3F50AD17E3D2D1EE'
)

field5 = Field.create!(
  name: "Estádio José Alvalade",
  location: "Rua Professor Fernando da Fonseca, 1501-806 Lisboa",
  field_size: 11,
  field_type: "Grass",
  parking: true,
  locker_room: true,
  indoor: false,
  description: "The José Alvalade Stadium, or Sporting Clube de Portugal Stadium, is a football stadium located in Lisbon, Portugal, belonging to Sporting Clube de Portugal. It is framed in the Alvalade XXI complex. It was the first Portuguese stadium to receive the 5 stars of UEFA.",
  user: user6,
  remote_photo_url: 'https://www.iol.pt/multimedia/oratvi/multimedia/imagem/id/569035b40cf2468d8fd07fb2/960'
)

field6 = Field.create!(
  name: "Pavilhão João Rocha",
  location: "R. Francisco Stromp, 1600-464 Lisboa",
  field_size: 5,
  field_type: "Wood",
  parking: true,
  locker_room: true,
  indoor: true,
  description: "The João Rocha Pavilion is a gymnastics pavilion located in the parish of Lumiar, in Lisbon. With capacity for 3 000 people, it is the current home of the high performance sports of the Sporting Clube de Portuga.",
  user: user6,
  remote_photo_url: 'https://thumbs.web.sapo.io/?epic=ODMxZ73OW6g2MV/g1zrEjs4eMsO5kXiGc1AIDhG4srFePJB2lpCYEYd0DxLCUFhnsYqBxXDc7ilsl9R9owTipqkpbohWIqC8XGaq4f85v/nGpiU=&W=1550&H=0&delay_optim=1'
)

field7 = Field.create!(
  name: "Estádio do Dragão",
  location: "Via Futebol Clube do Porto, 4350-415 Porto",
  field_size: 11,
  field_type: "Grass",
  parking: true,
  locker_room: true,
  indoor: false,
  description: "Estádio do Dragão is a football stadium, located in the parish of Campanhã, Porto city, currently owned by FC Porto, where the football team plays their matches at home. The stadium opened on November 16, 2003 and has a capacity of 50,033 spectators.",
  user: user7,
  remote_photo_url: 'https://europeanleagues.com/wp-content/uploads/ESSMA-Website-pic.jpg'
)

field8 = Field.create!(
  name: "Dragão Arena",
  location: "Alameda das Antas, 4350-414 Porto",
  field_size: 5,
  field_type: "Wood",
  parking: true,
  locker_room: true,
  indoor: true,
  description: "The Dragão Arena is the current Football Club of Porto pavilion for the club modalities. With a capacity for two thousand spectators, the pavilion opened on April 23, 2009.",
  user: user7,
  remote_photo_url: 'https://zerozero.co.mz/img/estadios/427/574427_ori__20190530101327_dragao_caixa.jpg'
)

field9 = Field.create!(
  name: "Air Fut Figo Maduro campo-1",
  location: "Rua 25 de Abril 10 A, Lisbon",
  field_size: 5,
  field_type: "Synthetic",
  parking: false,
  locker_room: true,
  indoor: true,
  description: "AIRFUT is a space to practice football in Lisbon, located next to the 2nd Circular ideal for those who like to practice football regularly. AirFut has several infrastructures for football practice with 1 synthetic 5 football pitch. If you like to get your group of friends together for a game, then this space is right for you, featuring extended hours that are compatible with the most hectic daily life.",
  user: user3,
  remote_photo_url: 'https://aircourts.com/uploads/courts/airfut2.jpg'
)

field10 = Field.create!(
  name: "Air Fut Figo Maduro campo-2",
  location: "Rua 25 de Abril 10 A, Lisbon",
  field_size: 5,
  field_type: "Synthetic",
  parking: false,
  locker_room: true,
  indoor: true,
  description: "AIRFUT is a space to practice football in Lisbon, located next to the 2nd Circular ideal for those who like to practice football regularly. AirFut has several infrastructures for football practice with 1 synthetic 5 football pitch. If you like to get your group of friends together for a game, then this space is right for you, featuring extended hours that are compatible with the most hectic daily life.",
  user: user3,
  remote_photo_url: 'https://aircourts.com/uploads/courts/airfut2.jpg'
)

field11 = Field.create!(
  name: "Air Fut Figo Maduro campo-3",
  location: "Rua 25 de Abril 10 A, Lisbon",
  field_size: 5,
  field_type: "Synthetic",
  parking: false,
  locker_room: true,
  indoor: true,
  description: "AIRFUT is a space to practice football in Lisbon, located next to the 2nd Circular ideal for those who like to practice football regularly. AirFut has several infrastructures for football practice with 1 synthetic 5 football pitch. If you like to get your group of friends together for a game, then this space is right for you, featuring extended hours that are compatible with the most hectic daily life.",
  user: user3,
  remote_photo_url: 'https://aircourts.com/uploads/courts/airfut2.jpg'
)


field12 = Field.create!(
  name: "Totalfoot campo-1",
  location: "Rua Aliança Operária 41 C, Lisbon",
  field_size: 5,
  field_type: "Grass",
  parking: false,
  locker_room: true,
  indoor: false,
  description: "Football Field equipped with natural lawn, for rental to formal or informal groups, birthdays, parties, training and activities.",
  user: user4,
  remote_photo_url: 'https://scontent.flis8-1.fna.fbcdn.net/v/t31.0-1/c122.0.720.720a/p720x720/11129354_548100065329100_749164143854311261_o.jpg?_nc_cat=105&_nc_oc=AQkuigRo3fFgAGQH-o3YVC0TNFhzTQNMkip1pPduUjp01lhihQrdTqSPENYQkbqXWcc&_nc_ht=scontent.flis8-1.fna&oh=1182bb1429b49285a8aa4df21624efe3&oe=5E00DE9A'
)

field13 = Field.create!(
  name: "Totalfoot campo-2",
  location: "Rua Aliança Operária 41 C, Lisbon",
  field_size: 3,
  field_type: "Grass",
  parking: false,
  locker_room: true,
  indoor: false,
  description: "Football Field equipped with natural lawn, for rental to formal or informal groups, birthdays, parties, training and activities.",
  user: user4,
  remote_photo_url: 'https://scontent.flis8-1.fna.fbcdn.net/v/t31.0-1/c122.0.720.720a/p720x720/11129354_548100065329100_749164143854311261_o.jpg?_nc_cat=105&_nc_oc=AQkuigRo3fFgAGQH-o3YVC0TNFhzTQNMkip1pPduUjp01lhihQrdTqSPENYQkbqXWcc&_nc_ht=scontent.flis8-1.fna&oh=1182bb1429b49285a8aa4df21624efe3&oe=5E00DE9A'
)

field14 = Field.create!(
  name: "Totalfoot campo-3",
  location: "Rua Aliança Operária 41 C, Lisbon",
  field_size: 3,
  field_type: "Grass",
  parking: false,
  locker_room: true,
  indoor: false,
  description: "Football Field equipped with natural lawn, for rental to formal or informal groups, birthdays, parties, training and activities.",
  user: user4,
  remote_photo_url: 'https://scontent.flis8-1.fna.fbcdn.net/v/t31.0-1/c122.0.720.720a/p720x720/11129354_548100065329100_749164143854311261_o.jpg?_nc_cat=105&_nc_oc=AQkuigRo3fFgAGQH-o3YVC0TNFhzTQNMkip1pPduUjp01lhihQrdTqSPENYQkbqXWcc&_nc_ht=scontent.flis8-1.fna&oh=1182bb1429b49285a8aa4df21624efe3&oe=5E00DE9A'
)

field15 = Field.create!(
  name: "Futebol 5 Low Cost campo-1",
  location: "Av. Estados Unidos da América 110, Lisbon",
  field_size: 5,
  field_type: "Synthetic",
  parking: true,
  locker_room: true,
  indoor: false,
  description: "Futebol Low Cost offers for rent a synthetic turf 5 football ring located in the center of Lisbon (Av. EUA). The course has its own lighting and parking on United States Avenue or António Patrício Street.",
  user: user8,
  remote_photo_url: 'https://scontent.flis8-2.fna.fbcdn.net/v/t31.0-8/14054507_1755131358091413_3786426600994310232_o.jpg?_nc_cat=107&_nc_oc=AQnIBEPw_U9-ApozqAnN6Y_kzZrOml3nURBRer8hEAnZakSo59QKRrhyqp0dGHEgGL0&_nc_ht=scontent.flis8-2.fna&oh=823a24dd778fe2d9de41e0c0e604b683&oe=5E021D27'
)

field16 = Field.create!(
  name: "Futebol 5 Low Cost campo-2",
  location: "Av. Estados Unidos da América 110, Lisbon",
  field_size: 5,
  field_type: "Synthetic",
  parking: true,
  locker_room: true,
  indoor: false,
  description: "Futebol Low Cost offers for rent a synthetic turf 5 football ring located in the center of Lisbon (Av. EUA). The course has its own lighting and parking on United States Avenue or António Patrício Street.",
  user: user8,
  remote_photo_url: 'https://scontent.flis8-2.fna.fbcdn.net/v/t31.0-8/14054507_1755131358091413_3786426600994310232_o.jpg?_nc_cat=107&_nc_oc=AQnIBEPw_U9-ApozqAnN6Y_kzZrOml3nURBRer8hEAnZakSo59QKRrhyqp0dGHEgGL0&_nc_ht=scontent.flis8-2.fna&oh=823a24dd778fe2d9de41e0c0e604b683&oe=5E021D27'
)

field17 = Field.create!(
  name: "Futebol 5 Low Cost campo-3",
  location: "Av. Estados Unidos da América 110, Lisbon",
  field_size: 5,
  field_type: "Synthetic",
  parking: true,
  locker_room: true,
  indoor: false,
  description: "Futebol Low Cost offers for rent a synthetic turf 5 football ring located in the center of Lisbon (Av. EUA). The course has its own lighting and parking on United States Avenue or António Patrício Street.",
  user: user8,
  remote_photo_url: 'https://scontent.flis8-2.fna.fbcdn.net/v/t31.0-8/14054507_1755131358091413_3786426600994310232_o.jpg?_nc_cat=107&_nc_oc=AQnIBEPw_U9-ApozqAnN6Y_kzZrOml3nURBRer8hEAnZakSo59QKRrhyqp0dGHEgGL0&_nc_ht=scontent.flis8-2.fna&oh=823a24dd778fe2d9de41e0c0e604b683&oe=5E021D27'
)

field18 = Field.create!(
  name: "Campo de Futebol Vicente Lucas campo-1",
  location: "Avenida do Restelo, Lisbon",
  field_size: 7,
  field_type: "Grass",
  parking: true,
  locker_room: true,
  indoor: false,
  description: "Located in Estadio do Restelo, and named after Mozambican player Vicente Lucas, these sports facilities feature a fully renovated outdoor lawn field for rent. In addition, guests can make use of the changing rooms, private parking and a terrace bar. The field can be rented from 35 euros per hour.",
  user: user2,
  remote_photo_url: 'https://aircourts.com/uploads/courts/courts_1677_1543856326.jpg'
)

field19 = Field.create!(
  name: "Campo de Futebol Vicente Lucas campo-2",
  location: "Avenida do Restelo, Lisbon",
  field_size: 7,
  field_type: "Grass",
  parking: true,
  locker_room: true,
  indoor: false,
  description: "Located in Estadio do Restelo, and named after Mozambican player Vicente Lucas, these sports facilities feature a fully renovated outdoor lawn field for rent. In addition, guests can make use of the changing rooms, private parking and a terrace bar. The field can be rented from 35 euros per hour.",
  user: user2,
  remote_photo_url: 'https://aircourts.com/uploads/courts/courts_1677_1543856326.jpg'
)

field20 = Field.create!(
  name: "Campo de Futebol Vicente Lucas campo-3",
  location: "Avenida do Restelo, Lisbon",
  field_size: 7,
  field_type: "Grass",
  parking: true,
  locker_room: true,
  indoor: false,
  description: "Located in Estadio do Restelo, and named after Mozambican player Vicente Lucas, these sports facilities feature a fully renovated outdoor lawn field for rent. In addition, guests can make use of the changing rooms, private parking and a terrace bar. The field can be rented from 35 euros per hour.",
  user: user2,
  remote_photo_url: 'https://aircourts.com/uploads/courts/courts_1677_1543856326.jpg'
)

field21 = Field.create!(
  name: "Outurela campo-1",
  location: "Estrada Outurela 44, Lisbon",
  field_size: 5,
  field_type: "Concrete",
  parking: false,
  locker_room: true,
  indoor: false,
  description: "Campo de cimento, gerido pelo clube Sporting Clube Linda-a-Velha.",
  user: user9,
  remote_photo_url: 'https://image.shutterstock.com/image-photo/goal-street-football-260nw-395037316.jpg'
)

field22 = Field.create!(
  name: "Outurela campo-2",
  location: "Estrada Outurela 44, Lisbon",
  field_size: 5,
  field_type: "Concrete",
  parking: false,
  locker_room: true,
  indoor: false,
  description: "Campo de cimento, gerido pelo clube Sporting Clube Linda-a-Velha.",
  user: user9,
  remote_photo_url: 'https://image.shutterstock.com/image-photo/goal-street-football-260nw-395037316.jpg'
)


field23 = Field.create!(
  name: "Parque de Jogos 1º de Maio",
  location: "Avenida Rio de Janeiro, Lisbon",
  field_size: 11,
  field_type: "Grass",
  parking: true,
  locker_room: true,
  indoor: false,
  description: "Located on Avenida Rio de Janeiro, this park offers the ideal conditions for soccer practice. It has field with natural grass. It is also possible to practice other sports such as tennis or athletics. In this space there is also room for family leisure activities.",
  user: user10,
  remote_photo_url: 'https://thumbs.web.sapo.io/?epic=9p1dT4n88DuKlIpr0MndfWAKkaON6PxPXwZDngo/oj//SwqeomVTs+Fk6GiG/pmL/wbgS1jfXrksDNDZ98A/5ToYJg==&Q=85&crop=center&errorpic=transparent&W=160'
)

puts "Created Fields"


puts "Creating new groups"

# group = Group.create!(
#   field: field,
#   date: "ano-mes-dia",
#   start_time: "00:00",
#   end_time: "00:00",
#   min_members: ,
#   max_members: ,
#   status: "Pending",
#   price:
# )

# 100.times do
#   Group.create!(
#     field: ,
#     date: "#{date}",
#     start_time:
#   )
# end

(Date.new(2019, 10, 10)..Date.new(2020, 01, 30)).each do |date|
  group1 = Group.create!(
    field: field1,
    date: "#{date}",
    start_time: "19:00",
    end_time: "20:00",
    min_members: 22,
    max_members: 30,
    status: "Pending",
    price: 5000
  )

  group2 = Group.create!(
    field: field1,
    date: "#{date}",
    start_time: "20:00",
    end_time: "21:00",
    min_members: 22,
    max_members: 30,
    status: "Pending",
    price: 5000
  )

  group3 = Group.create!(
    field: field2,
    date: "#{date}",
    start_time: "19:00",
    end_time: "20:00",
    min_members: 10,
    max_members: 15,
    status: "Pending",
    price: 200
  )

  group4 = Group.create!(
    field: field2,
    date: "#{date}",
    start_time: "21:00",
    end_time: "22:00",
    min_members: 10,
    max_members: 15,
    status: "Pending",
    price: 200
  )

  group5 = Group.create!(
    field: field3,
    date: "#{date}",
    start_time: "19:00",
    end_time: "20:00",
    min_members: 10,
    max_members: 15,
    status: "Pending",
    price: 200
  )

  group6 = Group.create!(
    field: field3,
    date: "#{date}",
    start_time: "21:00",
    end_time: "22:00",
    min_members: 10,
    max_members: 15,
    status: "Pending",
    price: 200
  )

  group7 = Group.create!(
    field: field3,
    date: "#{date}",
    start_time: "20:00",
    end_time: "21:00",
    min_members: 10,
    max_members: 15,
    status: "Pending",
    price: 200
  )

  group8 = Group.create!(
    field: field4,
    date: "#{date}",
    start_time: "20:00",
    end_time: "21:00",
    min_members: 22,
    max_members: 36,
    status: "Pending",
    price: 2000
  )

  group9 = Group.create!(
    field: field4,
    date: "#{date}",
    start_time: "19:00",
    end_time: "20:00",
    min_members: 22,
    max_members: 36,
    status: "Pending",
    price: 2000
  )

  group10 = Group.create!(
    field: field5,
    date: "#{date}",
    start_time: "19:30",
    end_time: "20:30",
    min_members: 22,
    max_members: 33,
    status: "Pending",
    price: 5000
  )

  group11 = Group.create!(
    field: field5,
    date: "#{date}",
    start_time: "21:00",
    end_time: "22:00",
    min_members: 22,
    max_members: 33,
    status: "Pending",
    price: 5000
  )

  group12 = Group.create!(
    field: field6,
    date: "#{date}",
    start_time: "19:00",
    end_time: "20:00",
    min_members: 10,
    max_members: 15,
    status: "Pending",
    price: 200
  )

  group13 = Group.create!(
    field: field6,
    date: "#{date}",
    start_time: "20:00",
    end_time: "21:00",
    min_members: 10,
    max_members: 15,
    status: "Pending",
    price: 200
  )

  group14 = Group.create!(
    field: field7,
    date: "#{date}",
    start_time: "20:00",
    end_time: "21:00",
    min_members: 22,
    max_members: 35,
    status: "Pending",
    price: 5000
  )

  group15 = Group.create!(
    field: field7,
    date: "#{date}",
    start_time: "20:00",
    end_time: "21:00",
    min_members: 22,
    max_members: 35,
    status: "Pending",
    price: 5000
  )

  group16 = Group.create!(
    field: field8,
    date: "#{date}",
    start_time: "19:00",
    end_time: "20:00",
    min_members: 10,
    max_members: 15,
    status: "Pending",
    price: 200
  )

  group17 = Group.create!(
    field: field8,
    date: "#{date}",
    start_time: "22:00",
    end_time: "23:00",
    min_members: 10,
    max_members: 15,
    status: "Pending",
    price: 200
  )

  group18 = Group.create!(
    field: field13,
    date: "#{date}",
    start_time: "19:00",
    end_time: "20:00",
    min_members: 6,
    max_members: 8,
    status: "Pending",
    price: 45
  )

  group19 = Group.create!(
    field: field13,
    date: "#{date}",
    start_time: "19:30",
    end_time: "20:30",
    min_members: 6,
    max_members: 10,
    status: "Pending",
    price: 45
  )

  group20 = Group.create!(
    field: field18,
    date: "#{date}",
    start_time: "19:00",
    end_time: "20:00",
    min_members: 14,
    max_members: 20,
    status: "Pending",
    price: 50
  )

  group21 = Group.create!(
    field: field18,
    date: "#{date}",
    start_time: "21:00",
    end_time: "22:00",
    min_members: 14,
    max_members: 20,
    status: "Pending",
    price: 45
  )

end

  group22 = Group.create!(
    field: field13,
    date: "2019-09-01",
    start_time: "21:00",
    end_time: "22:00",
    min_members: 6,
    max_members: 9,
    status: "Booked",
    price: 50
  )

  group23 = Group.create!(
    field: field21,
    date: "2019-09-02",
    start_time: "19:00",
    end_time: "20:00",
    min_members: 10,
    max_members: 15,
    status: "Booked",
    price: 76
  )

puts "Created groups"

puts "Creating new group members"


groupmember1 = GroupMember.create!(
  user: user11,
  group: group22,
)

groupmember2 = GroupMember.create!(
  user: user13,
  group: group22,
)

groupmember3 = GroupMember.create!(
  user: user14,
  group: group22,
)

groupmember4 = GroupMember.create!(
  user: user17,
  group: group22,
)

groupmember5 = GroupMember.create!(
  user: user18,
  group: group22,
)

groupmember6 = GroupMember.create!(
  user: user20,
  group: group22,
)

groupmember7 = GroupMember.create!(
  user: user30,
  group: group22,
)

groupmember8 = GroupMember.create!(
  user: user22,
  group: group22,
)

groupmember9 = GroupMember.create!(
  user: user12,
  group: group22,
)

groupmember10 = GroupMember.create!(
  user: user11,
  group: group23,
)

groupmember11 = GroupMember.create!(
  user: user13,
  group: group23,
)

groupmember12 = GroupMember.create!(
  user: user14,
  group: group23,
)

groupmember13 = GroupMember.create!(
  user: user17,
  group: group23,
)

groupmember14 = GroupMember.create!(
  user: user18,
  group: group23,
)

groupmember15 = GroupMember.create!(
  user: user20,
  group: group23,
)

groupmember16 = GroupMember.create!(
  user: user30,
  group: group23,
)

groupmember17 = GroupMember.create!(
  user: user22,
  group: group23,
)

groupmember18 = GroupMember.create!(
  user: user24,
  group: group23,
)

groupmember19 = GroupMember.create!(
  user: user31,
  group: group23,
)

groupmember20 = GroupMember.create!(
  user: user16,
  group: group23,
)

groupmember21 = GroupMember.create!(
  user: user29,
  group: group23,
)

groupmember22 = GroupMember.create!(
  user: user12,
  group: group23,
)

puts "Created group members"

puts "Done!!"
