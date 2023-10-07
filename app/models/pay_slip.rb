class PaySlip < ApplicationRecord
  def self.fetch_record_for(query_params)
    self.where(query_params)
  end
end
