class CreateUserSalaries < ActiveRecord::Migration[7.0]
  def change
    create_table :user_salaries do |t|
      t.references :user,                 foreign_key: true
      t.integer :month_total_salary,      null: false
      t.integer :deduction,               null: false
      t.integer :net_salary,              null: false
      t.integer :welfare_pension,         null: false
      t.integer :transportation_expense,  null: false
      t.integer :residential_tax,         null: false
      t.integer :health_insurance_fee,    null: false
      t.integer :overtime_pay,            null: false
      t.integer :late_night_overtime_pay, null: false
      t.date    :salary_month,            null: false

      t.timestamps
    end
  end
end
