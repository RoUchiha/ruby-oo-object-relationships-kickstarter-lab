class Project

    attr_reader :title

    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers 
        all_backers = []
        ProjectBacker.all.each do |p|
            if p.project == self
                all_backers << p.backer 
            end
        end
        return all_backers
    end

end