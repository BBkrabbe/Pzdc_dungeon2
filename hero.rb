class Hero
  attr_accessor :name_pl
  attr_accessor :hp_max_pl, :hp_pl, :regen_hp_base_pl, :regen_hp_pl, :recovery_hp_pl
  attr_accessor :mp_max_pl, :mp_pl, :regen_mp_base_pl, :regen_mp_pl, :recovery_mp_pl
  attr_accessor :mindam_base_pl, :mindam_pl, :maxdam_base_pl, :maxdam_pl
  attr_accessor :accuracy_base_pl, :accuracy_pl
  attr_accessor :armor_base_pl, :armor_pl
  attr_accessor :block_pl
  attr_accessor :exp_pl, :lvl_pl
  attr_accessor :stat_points, :skill_points
  attr_accessor :weapon

  def initialize
    @hp_max_pl = 100
    @regen_hp_base_pl = 0
    @recovery_hp_pl = @hp_max_pl * 0.1

    @mp_max_pl = 100
    @regen_mp_base_pl = 0
    @recovery_mp_pl = @mp_max_pl * 0.1

    @mindam_base_pl = 5
    @maxdam_base_pl = 5

    @accuracy_base_pl = 80

    @armor_base_pl = 0

    @exp_pl = 0
    @lvl_pl = 0

    @stat_points = 5
    @skill_points = 0
  end
end
