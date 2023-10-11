class PaySlipsController < ApplicationController
  def index
  end

  # リクエスト送信時、そもそもPOSTじゃなくてGETの方が適切な気がしてきた
  # (検索をしているだけでDBに更新などをかけているわけではないので)
  def monthly_detail
    year  = date_params["date(1i)"]
    month = date_params["date(2i)"]
    query_params = { :year_month => "#{year}-#{month}" }
    @pay_slip = PaySlip.fetch_record_for(query_params)

    respond_to do |format|
      format.html { render :index }
    end
  end

  private

  def date_params
    params.permit(:date)
  end
end
