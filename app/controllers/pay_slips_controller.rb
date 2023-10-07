class PaySlipsController < ApplicationController
  def index
  end

  # viewでテンプレートに変更が加えられないので原因調査する
  def monthly_detail
    year  = date_params["date(1i)"]
    month = date_params["date(2i)"]
    query_params = { :year_month => "#{year}-#{month}" }
    @pay_slip = PaySlip.fetch_record_for(query_params)
  end

  private

  def date_params
    params.permit(:date)
  end
end
