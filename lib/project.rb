class Project
  attr_accessor :title
  attr_reader :backers
  def initialize(title)
    @title = title
    @backers = []
  end

  def add_backer(backer)
    self.backers << backer
    if !backer.back_project.include?(self)
      backer.back_project(self)
    end
  end
end
