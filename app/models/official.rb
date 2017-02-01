class Official < ApplicationRecord
    has_one :identifier
    has_many :terms
end
