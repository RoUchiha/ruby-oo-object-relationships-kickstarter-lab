class Backer

    attr_reader :name 

    def initialize(name)
        @name = name
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backed_projects
        projects = []
        ProjectBacker.all.each do |p|
            if p.backer == self
                projects << p.project 
            end
        end
        return projects
    end

end