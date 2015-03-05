class Position < ActiveRecord::Base
	SEGMENT_TYPE = ["sales", "marketing", "research & development", "procurement", "human resources", "finance"]
	has_many :evaluations
end
