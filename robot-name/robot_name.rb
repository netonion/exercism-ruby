class Robot

  attr_reader :name

  @@used = {}

  def initialize
    set_name
  end

  def reset
    set_name
  end

  def self.forget
    @@used.clear
  end

  def set_name
    @name = gen_name
    while @@used.has_key? @name
      @name = gen_name
    end
    @@used[@name] = true
  end

  def gen_name
    ('A'..'Z').to_a.sample + ('A'..'Z').to_a.sample + "%03d" % rand(999)
  end
end

module BookKeeping
  VERSION = 3
end
