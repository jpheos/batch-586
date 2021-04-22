require_relative 'building'

# Castle inherits from Building
class Castle < Building
  attr_accessor :butler
  attr_reader :category

  # Class method .categories
  # Returns categories of castles, not of a specific instance
  # Called by using Castle.categories
  def self.categories
    %w[Moyen Age Renaissance Gothique Vignoble]
  end

  def category=(new_category)
    if Castle.categories.include?(new_category)
      @category = new_category
    else
      puts "I don't know this category"
    end
  end

  # Instance method #has_a_butler?
  def has_a_butler?
    @butler != nil
  end

  # Destructive methods end with '!'
  def fire_butler!
    @butler = nil
  end

  # Override mother method #floor_area
  # 'super' calls the mother method (in Building)
  def floor_area
    super + 300
  end
end

