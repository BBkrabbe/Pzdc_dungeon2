module HeroUseSkill
  def self.camp_skill(hero)
    if hero.hp_max - hero.hp > 0 && hero.camp_skill.name == "Первая помощь"
      print "У вас #{hero.hp.round}/#{hero.hp_max} жизней, хотите использовать навык #{hero.camp_skill.name}, чтобы восстановить #{hero.camp_skill.heal_effect.round} жизней за 10 маны? (Y/N) "
      noncombat_choice = gets.strip.upcase
      if hero.mp >= hero.camp_skill.mp_cost && noncombat_choice == "Y"
        heal_effect_message = hero.camp_skill.heal_effect.round
        hero.hp += hero.camp_skill.heal_effect
        hero.mp -= hero.camp_skill.mp_cost
        puts "Вы восстановили #{heal_effect_message} жизней за #{hero.camp_skill.mp_cost} маны, теперь у вас #{hero.hp.round}/#{hero.hp_max} жизней и #{hero.mp.round}/#{hero.mp_max} маны"
      elsif noncombat_choice == "Y"
        puts "Не хватает маны"
      end
    end
  end
end