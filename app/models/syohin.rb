class Syohin < ActiveRecord::Base
  before_update do
    self.kingaku = kingaku.round(-1)
    self.record_datetime += 1.day
  end
end
