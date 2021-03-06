class HomeController < ApplicationController
  before_action :var, :only => [:index, :team]

  def var
    @name='BigAl'
    @hero_image = Faker::Avatar.image(slug: "my-own-slug", size: "50x50", format: "jpg") 
    @hero_name = Faker::Superhero.prefix + ' ' + Faker::Superhero.name
    @hero_power = Faker::Superhero.power
    @hero_company = Faker::Company.name + ' ' + Faker::Company.suffix + ' (' + Faker::Company.industry + ')'
    @hero_profession = Faker::Job.seniority + ' ' + Faker::Job.title
    @hero_ability = Faker::Company.bs.titleize
  end

  def index
    # @name = 'Big Al'
  end
  
  def team
  end
end
