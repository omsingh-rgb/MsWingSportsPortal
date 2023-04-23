class Competition < ActiveRecord::Base
  def self.comp_date
    Date.new(2023, 06, 2)
  end
end
