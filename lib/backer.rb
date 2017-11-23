class Backer
  attr_accessor :name, :backed_projects
  def initialize(name)
    @name = name
    @backed_projects = []
  end

  def back_project(project)
    self.backed_projects << project
    if project.backers.exclude?(self)
      project.add_backer(self)
    else
      project
    end
  end

end
