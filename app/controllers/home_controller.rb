class HomeController < ApplicationController
  before_action :var, :only => [:index, :team]

  def var
    @name='BigAl'
    @random_image_num = rand(1..1000)
    @random_set_num = rand(1..5)
    @random_bg_num = [1,2].sample
    @hero_image = Faker::Avatar.image(
      slug: @random_image_num, 
      size: "300x300", 
      format: "png", 
      set: "set#{@random_set_num}",
      bgset: "bg#{@random_bg_num}") 
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
    @team_num = params[:team_num].to_i
    if @team_num > 0
      
    end
  end
end
