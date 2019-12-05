class Corporation < ApplicationRecord
  belongs_to :subsidiary

  def to_s
    name
  end
end
