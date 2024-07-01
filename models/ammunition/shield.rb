require 'yaml'

class Shield
  attr_reader :code, :name, :armor, :block_chance

  def initialize(name)
    @code = name
    shield = YAML.safe_load_file('data/ammunition/shields.yml', symbolize_names: true)[name.to_sym]
    @name  = shield[:name]
    @armor = shield[:armor]
    @block_chance = shield[:block_chance]
  end
end


# %w[without braided_buckler wooden_buckler wooden_shield].each do |armor|
#   p Shield.new(armor)
# end
