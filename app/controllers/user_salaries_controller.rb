class UserSalariesController < ApplicationController
  before_action :set_user_salary, only: %i[ show edit update destroy ]

  # TODO: view側でモデルに紐づかないDate型フォームを生成する
  # 送信されてきたパラメータとcurrent_user_idを元に検索処理をかける
  # 検索結果をインスタンス変数に格納してshowアクションへリダイレクトさせる
  def index
  end

  def show
    user_id = current_user.id
    @user_salaries = UserSalary.where(id: user_id)
  end

  def new
    @user_salary = UserSalary.new
  end

  def edit
  end

  def create
    @user_salary = UserSalary.new(user_salary_params)

    respond_to do |format|
      if @user_salary.save
        format.html { redirect_to user_salary_url(@user_salary), notice: "User salary was successfully created." }
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @user_salary.update(user_salary_params)
        format.html { redirect_to user_salary_url(@user_salary), notice: "User salary was successfully updated." }
      else
        format.html { render :edit, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @user_salary.destroy

    respond_to do |format|
      format.html { redirect_to user_salaries_url, notice: "User salary was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    def set_user_salary
      @user_salary = UserSalary.find(params[:id])
    end

    def user_salary_params
      params.require(:user_salary).permit(:month_total_salary, :deduction, :net_salary, :welfare_pension, :transportation_expense, :residential_tax, :health_insurance_fee, :overtime_pay, :late_night_overtime_pay)
    end
end
