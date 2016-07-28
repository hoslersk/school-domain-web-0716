class School

  def roster
    @roster #{ |hash, key| hash[key] = [] }
  end

  # def roster=(roster)
  #   @@roster = roster
  # end

  def initialize(school)
    @school = school
    @roster = Hash.new
  end

  def add_student(name, school_year)
    if @roster.include?(school_year)
      @roster[school_year] << name
    else
      @roster[school_year] = Array.new
      @roster[school_year] << name
    end
    #return @roster
  end

  def grade(school_year)
    return @roster[school_year]
  end

  def sort
    @roster.each do |array, items|
      @roster[array] = items.sort
    end
    return Hash[@roster.sort]
  end

end
