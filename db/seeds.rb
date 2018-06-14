Heroine.destroy_all
Power.destroy_all

powers = [
  {name:"super strength",description: "gives the wielder super human strengths"},
  {name:"flight",description: "gives the wielder the ability to fly through the skys at supersonic speed"},
  {name:"super human senses",description: "allows the person to user their senses at super human level"},
  {name:"elasticity",description: "can stretch the human body to extreme lengths"},
]

powers.each {|power| Power.create(power)}

heroines = [
  {name:"Peter Parker", super_name:"Spider-Man" },
  {name:"Steve Rogers", super_name:"Captain America" },
  {name:"Bruce Banner", super_name:"Hulk" },
  {name:"Natasha Romanoff", super_name:"Black Widow" },
  {name:"Matthew Murdock", super_name:"Dare Devil" },
  {name:"Reed Richards", super_name:"Mr.Fantastic" },
  {name:"T'Challa", super_name:"Black Panther" },
  {name:"Thor Odinson", super_name:"Thor" },
  {name:"Tony Stark", super_name:"Iron Man" },
  {name:"Carol Danvers", super_name:"Captain Marvel" }
]

# ---------------
# POWERFUL HEROES:
# Once you set up your tables and associations the way you want them, you can
# uncomment the following method to associate superheroes with a superpower!
# Just uncomment line 33 and run `rake db:seed` again in your terminal.
# (Note: If you try to do this before you set up proper associations, it will error.)
# ---------------
heroines = heroines.map { |heroine| heroine.merge( { power_id: Power.all.sample.id } ) }
# ---------------

heroines.each { |heroine| Heroine.create(heroine) }
