class Project
  attr_accessor :title, :backers
  def initialize(title)
    @title = title
    @backers = []
  end

  def add_backer(backer)
    self.backers << backer
    if backer.back_project.exclude?(self)
      backer.back_project(self)
    else
      backer
    end
  end
end
