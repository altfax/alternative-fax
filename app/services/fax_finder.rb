class FaxFinder
    def initialize(official)
        @official = official
    end

    def recent
        terms = @official.terms.order(start: :desc)
        terms.each do |term|
            next if term.fax.nil?
            return term.fax
        end
        return "No fax on file"
    end


end
