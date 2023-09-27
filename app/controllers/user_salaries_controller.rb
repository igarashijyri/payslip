class UserSalariesController < ApplicationController
  def index
  end

  # TODO: date_paramsを使って検索してインスタンス変数に格納する。
  # viewテンプレート側でインスタンス変数の値をeachで回して表示処理を行う。
  # モックデータの生成が必要。
  def monthly_detail
    
  end

  private

    def date_params
      params.permit(:date)
    end
end
