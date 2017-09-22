# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Post.delete_all
User.delete_all
Location.delete_all

# creation of users
user_1 = User.create({
  first_name: "Chanel",
  last_name: "Sparks",
  city: "San Francisco",
  state: "CA",
  country: "USA",
  image: "http://www.boostinspiration.com/wp-content/uploads/2010/09/BlackAndWhitePhotographyPeople1.jpg",
  email: "csparks@unkown.com",
  password: "pizza",
  })
user_2 = User.create({
  first_name: "Ashley",
  last_name: "Sparks",
  city: "San Francisco",
  state: "CA",
  country: "USA",
  image: "http://www.curiositytravels.org/wp-content/uploads/2015/12/IMG_6425.jpg",
  email: "asparks@unkown.com",
  password: "pizza",
  })
user_3 = User.create({
  first_name: "Janet",
  last_name: "Sparks",
  city: "San Francisco",
  state: "CA",
  country: "USA",
  image: "https://i.pinimg.com/736x/8d/59/81/8d5981a2dbb27316afe9000066e8dbb2--yale-sands.jpg",
  email: "jsparks@unkown.com",
  password: "pizza",
})

# create locations
location1 = Location.create({
  address: "Carrer de Mallorca",
  city: "Barcelona",
  state: "Catalonia",
  postal_code: "08013",
  country: "Spain",
  icon_image: "http://www.madeforspainandportugal.com/wp-content/uploads/2016/01/map-spain-white.svg",
  background_image: "barcelona_01.jpg",
  description: "Fall in love with Barcelona, where food, friends, family and fun rule all. Whether you're looking to follow royal footsteps in Madrid, lose yourself in Barcelona's sea breeze, or tame the brave bull in mythical Andalucía, adventure awaits around every corner.",
  })

location2 = Location.create({
  address: "Westminster",
  city: "London",
  state: "UK",
  postal_code: "SW1A 0AA",
  country: "UK",
  icon_image: "http://www.madeforspainandportugal.com/wp-content/uploads/2016/01/map-spain-white.svg",
  background_image: "london_01.jpg",
  description: "A tireless innovator of art and culture, London is a city of ideas and the imagination. This city is a constant discovery: new restaurants and bars, outstanding museum extensions or refurbishments (and yet many remain free), once-derelict but now trendy neighbourhoods, and four distinct seasons that each bring unique pleasures.",
  })

location3 = Location.create({
  address: "154 Engelsa Prospekt",
  city: "St. Petersburg",
  state: " St. Petersburg ",
  postal_code: "194358",
  country: "Russia",
  icon_image: "http://www.madeforspainandportugal.com/wp-content/uploads/2016/01/map-spain-white.svg",
  background_image: "st_petersburg_01.jpg",
  description: "Little of importance has changed in St Petersburg since I first visited in 1994. It remains a city of majestic architecture, high artistic culture and historical significance. I will never tire of exploring the amazing art collections of the Hermitage and the Russian Museum nor be bored by the grand facades and the reflections of palaces in the canals.",
})

location4 = Location.create({
  address: "Champ de Mars",
  city: "Paris",
  state: "Paris",
  postal_code: "75007",
  country: "France",
  icon_image: "http://www.madeforspainandportugal.com/wp-content/uploads/2016/01/map-spain-white.svg",
  background_image: "Europe_01.jpg",
  description: "Paris is one of the most beautiful cities on earth, a truth easily appreciated on a stroll that could yield one stunning vista after another, from the epic Eiffel Tower to the regal Jardin des Tuileries to the petite cafés bursting onto the sidewalks. Beyond the city’s visual appeal, the cultural riches of the French capital are unsurpassed. Whether you opt to explore the historic, fashion-conscious, bourgeois, or bohemian and arty sides of Paris, one thing is certain: the City of Light will always enthrall.",
  })

  # Creation Posts
  posts = [
    {
      user_id: user_1.id,
      location_id: location1.id,
      title: "Las Ramblas",
      description: "One of the most famous streets in the world, pedestrianised all the way down the middle and an ideal place for people watching. Las Ramblas is full of bustle, with a wide variety of street stalls, street entertainers and pavement cafes.There is also a wide range of shops on either side, as well as the entrance to La Boqueria market, where you will find stalls full of colourful and delicious fruit and other foods. The Canaletes fountain near the top is where FC Barcelona fans gather whenever the team wins, and they say that if you drink from it, you will always return to Barcelona. At the bottom of the Rambla, near the port, is the towering statue of Christopher Columbus.",
      image: "https://cdn.theculturetrip.com/wp-content/uploads/2016/01/2806934358_e460f4fa6c_z.jpg"
    },
    {
      user_id: user_2.id,
      location_id: location1.id,
      title: "Park Guell",
      description: "A beautiful park and vast in area, with spectacular views over the city. It is another one of Gaudi's many creations.You can spend a lot of time here, just wandering around. Note the mosaic dragon at the entrance - a symbol of Catalonia. People often sit on it!",
      image: "https://d1kioxk2jrdjp.cloudfront.net/resized/486x324/16922-Park_Guell.jpg"
    },
    {
      user_id: user_3.id,
      location_id: location1.id,
      title: " Magic Fountain (Font Magica)",
      description: "A beautiful and awe-inspiring sight, full of colour and music. The show begins at about 9.pm. and the fountains change colour every few minutes. There are also wonderful views of the city from this location. And another good place for people watching! It's a great place to be at sunset.",
      image: "https://a.travel-assets.com/mediavault.le/media/a1ad04fc47afb15bc21163c8b2c270dded169d84.jpeg"
    },
    {
      user_id: user_1.id,
      location_id: location1.id,
      title: "Plaza De Cataluna",
      description: "A central hub of Barcelona, a place to catch public transport, visit department stores or sit on a bench and watch the world go by. There are fountains here and these are lit up at night. It is a short walk from here to Las Ramblas.",
      image: "http://www.hotelroomsearch.net/im/hotels/es/plaza-de-catalu%C3%B1a-18.jpg"
    },
    {
      user_id: user_2.id,
      location_id: location1.id,
      title: "Stadio Olimpico",
      description: "This is the home of the 1992 Summer Olympics. You can go inside the Stadium for free and also wander about the buildings outside.The Olympic Park is on a hill, so there are great views over the city as well. For a small fee, you can go in the Olympic Museum.",
      image: "https://traveldigg.com/wp-content/uploads/2016/08/New-Stadio-Olimpico-Roma-Design.jpg"
    },
    {
      user_id: user_3.id,
      location_id: location2.id,
      title: "Hyde Park",
      description: "Hyde Park is central London’s largest park and exploring it is a must but just remember it is big enough to get lost in! There is something for everyone to enjoy from walks through its wide open spaces, to boating on the Serpentine Lake, to horse riding, a game of tennis or a chance to swim in the lake. Kensington Gardens adjoins Hyde Park and here you find Kensington Palace where Prince William and Kate live with Prince George. (Although you can visit the palace I'm afraid you are unlikely to spot these royals!) There are two free art galleries as well as the Princess Diana Memorial Playgrounds and Fountain for children and the statue of Peter Pan. Hyde Park is the location for many great open air concerts, as well as the famous Speakers’ Corner where anyone can speak their piece. There’s plenty of space to play ball games or you can just lie down, have a picnic and rest from the busy task of visiting London.",
      image: "https://traveldigg.com/wp-content/uploads/2016/07/Hyde-Park-Photo.jpg"
    },
    {
      user_id: user_1.id,
      location_id: location2.id,
      title: "WWT London Wetland Centre",
      description: "The London Wetlands Centre is a hidden gem, an urban oasis not far from the centre of London where you could think you were in the middle of nowhere! It’s an important area for resident and migrating birds and there are hides dotted around for you to sit quietly and see how many bird species you can spot. More active is feeding time in the otter pool where they will treat you to their delightful play. There are board walks to take you around and the full circuit is a decent walk for enjoying the varied plants as well as the wildlife.",
      image: "http://cdn.funkidslive.com/wp-content/uploads/London-Wetland-Centre.jpg"
    },
    {
      user_id: user_2.id,
      location_id: location2.id,
      title: "Horse Guards Parade at Whitehall",
      description: "This is the largest single open space in London used for the changing of the guards. At its entrance you will find two mounted soldiers who – along with their horses – stand as still as statues, despite the constant throngs of tourists and the many photos taken of them.",
      image: "http://l.rgbimg.com/cache1nE2yY/users/m/mi/micromoth/600/mhnPlok.jpg"
    },
    {
      user_id: user_3.id,
      location_id: location2.id,
      title: "Trafalgar Square",
      description: "The front-running contender for the geographic heart of London, Trafalgar Square is a brilliant spot for meeting up with friends and embarking upon any number of Central London adventures. But it's an interesting destination in its own right as well - with an impressive calendar of free events, an ever-changing Fourth Plinth public art display, the famed lions on constant vigil and Nelson's Column extending above it all.",
      image: "https://www.london.gov.uk/sites/default/files/business-t-square-5650-2x1.jpg?v=71600"
    },
    {
      user_id: user_1.id,
      location_id: location2.id,
      title: "Churchill War Rooms",
      description: "The underground headquarters of Winston Churchill and his wartime government during the Blitz are now open to the public, along with an interactive Churchill Museum that offers a fascinating look at life during World War II, plus a chance to see how technological advances then have changed the way we live today.",
      image: "http://europeantrips.org/wp-content/uploads/2015/11/Churchill-War-Rooms-in-London4.jpg"
    },
    {
      user_id: user_2.id,
      location_id: location3.id,
      title: "State Hermitage Museum and Winter Palace",
      description: "Even if you only had only one day in St. Petersburg, you simply mustn't miss the State Hermitage Museum. Started when Empress Catherine the Great purchased 255 paintings from Berlin in 1764, the collection now contains more than 2.7 million pieces, include many works that Catherine bought in Europe through her French art adviser, Denis Diderot.",
      image: "http://www.saint-petersburg.com/images/virtual-tour/hermitage3.jpg"
    },
    {
      user_id: user_3.id,
      location_id: location3.id,
      title: "The General Staff Building",
      description: "A welcome addition to the Hermitage Museum, the General Staff Building showcases an interesting collection of modern art. The inner courtyard, covered with a glass roof, is also an absolute blockbuster setting for souvenir photo shoots.",
      image: "http://www.saint-petersburg.com/images/buildings/general-staff-and-ministries-building/arch-of-the-general-staff-building-in-st-petersburg.jpg"
    },
    {
      user_id: user_1.id,
      location_id: location3.id,
      title: "Grand Palace",
      description: "Peterhof, and its Grand Palace, is a worthy and iconic tourist attraction — famous especially for its Grand Cascade of fountains. But I would pay particular attention to the smaller palaces that Peter the Great commissioned at his 'Russian Versailles.' Among my favorites are 'Mon Plaisir' and 'The Hermitage Pavilion,' where the table was lifted through the floor to amuse important guests.",
      image: "http://www.visit-petersburg.ru/media/uploads/tourobject/196858/196858_cover.jpg.1050x700_q95_crop_upscale.jpg"
    },
    {
      user_id: user_2.id,
      location_id: location3.id,
      title: "Vladimir Nabokov Museum",
      description: "The Vladimir Nabokov Museum occupies the ground floor of the building where the writer himself lived for many years. Among its authentic historical interiors are a dining room, a family room, and a library. The place is magical, and its atmosphere transports you straight back to the era of Nabokov's life.",
      image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSRzJ_VymN_u0S5GbeGU0TU90wtQaDjCGRyw4SBziqnlMHzpCKO"
    },
    {
      user_id: user_3.id,
      location_id: location3.id,
      title: "The Field of Mars",
      description: "The Field of Mars is a large open grassy area where Russian armies used to do formations and drills. There is a placque commemorating fallen Russian soldiers, but mostly people hang out, play music, and socialize.",
      image: "http://www.saint-petersburg.com/images/parks/field-of-mars/field-of-mars-in-st-petersburg.jpg"
    },
    {
      user_id: user_2.id,
      location_id: location4.id,
      title: "Basilica du Sacre-Coeur de Montmartre",
      description: "The wedding cake on the balcony of Paris. This lovely Roman Catholic church is built on the Butte Montmartre, and as the highest point in Paris, it gives you a good view over the city. You can climb the 222 steps or take the funicular to reach the top. The Basilica was designed by Paul Abadie and Lucien Magne in Romano-byzantine style, and built to honor the 58,000 men that died during the Franco-Prussian War. The Sacré Coeur is situated in Montmartre, an idyllic and bohemian neighborhood full of lovely boutiques, restaurants and street art.",
      image: "https://upload.wikimedia.org/wikipedia/commons/thumb/a/ad/Le_sacre_coeur_%28paris_-_france%29.jpg/1200px-Le_sacre_coeur_%28paris_-_france%29.jpg"
    },
    {
      user_id: user_1.id,
      location_id: location4.id,
      title: "Champs-Elysees",
      description: "Shopping time! While you will not find many Parisians here (it is quite expensive and there are mainly chain stores), the most beautiful avenue in the world is still worth a visit. The buildings are beautiful and the little alleyways on both sides are full of bistros, bars and clubs to explore. Fans of the Tour de France may also know this place as the final stage of the race course!",
      image: "http://s3.amazonaws.com/medias.photodeck.com/edfe31d2-ed66-11e1-861b-8165b3b3ae88/les-champs-elysees-au-crepuscule_uxga.jpg"
    },
    {
      user_id: user_3.id,
      location_id: location4.id,
      title: "Luxembourg Gardens",
      description: "Next to the Panthéon you will find the Luxembourg Gardens — always a lovely spot to visit whether it’s winter, fall, spring or summer. Each season has its own unique charm. It’s one of the most beautiful parks in Paris and the perfect place to wander around, enjoy a picnic, get active with sports or just relax and admire this beautifully maintained city park. Nowadays the French Senate meets in the Palace situated in the gardens, so you never know whom you may be rubbing shoulders with in this green oasis.",
      image: "https://www.discoverwalks.com/blog/wp-content/uploads/2014/06/paris-parks-big.jpg"
    },
    {
      user_id: user_1.id,
      location_id: location4.id,
      title: "Eiffel Tower",
      description: "The Eiffel Tower ... Paris wouldn’t be Paris without this iconic landmark! I think the best time to visit the Eiffel Tower is at night, when it is illuminated. Start at Trocadero to enjoy the best view of the tower (it's always busy, so it may take a while before you can take your perfect photo), and then walk down the stairs towards the tower until you arrive beneath it. After you've admired it up close, walk further on Champ de Mars and pause for a drink in the grass (on summer nights) or a romantic walk (on winter nights).",
      image: "https://wallpapercave.com/wp/CRZF6FO.jpg"
    },
    {
      user_id: user_2.id,
      location_id: location4.id,
      title: "Place des Vosges",
      description: "This lovely little park takes you back to the old 17th century Paris, and is set in the heart of the Marais. The square was built by Henri IV and is the oldest square in Paris. Its orange buildings are quite idyllic and known to be the popular homes of French politicians like Dominic Strauss-Kahn. A century ago, it was also the home of Victor Hugo. whose house is nowadays a museum and worth a peek if you have time. In the streets surrounding the square, you’ll also find the lively, unique atmosphere of the Marais just waiting to be explored.",
      image: "https://www.turbopass.com/1293-carousel/place-des-vosges-paris.jpg"
    },
  ]

  Post.create(posts)
