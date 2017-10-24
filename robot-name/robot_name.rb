class Robot

  attr_reader :name

  def self.forget
    @@names = ('AA000'..'ZZ999').to_a.shuffle
  end

  forget

  def initialize
    reset
  end

  def reset
    @name = @@names.pop
  end
end

module BookKeeping
  VERSION = 3
end
