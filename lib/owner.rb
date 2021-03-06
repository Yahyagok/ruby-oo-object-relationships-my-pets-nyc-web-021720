class Owner
  attr_reader :name, :species
  
  # code goes here
  @@all = []
  def initialize(name)
    @name = name 
    @species = "human"
    Owner.all << self

  end 

  def say_species
    "I am a #{self.species}."
  end 
  def self.all 
    @@all 
  end 

  def self.count 
    Owner.all.count 
  end

  def self.reset_all 
    self.all.clear
  end 

  def cats 
    Cat.all.select do |cat|
      cat.owner == self
    end 
  end 

  def dogs 
    Dog.all.select do |dog|
      dog.owner == self 
    end 
  end 

  def buy_cat(name)
    Cat.new(name, self) 
  end 

  def buy_dog(name)
    Dog.new(name,self)
  end 

  def walk_dogs
    self.dogs.each do |dog|
      dog.mood = "happy"
    end 

  end 
  def feed_cats 
    self.cats.each do |cat| 
      cat.mood = "happy"
    end
  end 

  def sell_pets
    pets = self.dogs + self.cats 

    pets.each do |pet|
    pet.owner = nil # .owner is coming from attribute , cat or dog has an atribute of owner ,so you can equal to anything you want 
    pet.mood = "nervous"
   
    end 
    def list_pets 
      
      "I have #{self.dogs.count} dog(s), and #{self.cats.count} cat(s)."
    end 





  end 



  
end