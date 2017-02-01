class Official < ApplicationRecord
    has_one :identifier
    has_many :terms

    attr_accessor :recent_fax_num
end
