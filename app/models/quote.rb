class Quote < ApplicationRecord
  def next_id
    all = Quote.all.collect {|q| q.id}
    pos = all.index(self.id)
    return nil unless pos
    pos == all.size-1 ? nil : all[pos+1]
  end

  def previous_id
    all = Quote.all.collect {|q| q.id}
    pos = all.index(self.id)
    return nil unless pos
    pos == 0 ? nil : all[pos-1]
  end
end
