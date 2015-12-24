class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.string :name
      t.string :father_name
      t.date :date_of_birth
      t.string :pan_no
      t.text :address
      t.string :nominee_name
      t.string :nominee_relationship
      t.date :nominee_date_of_birth
      t.string :rbi_cc_op_no
      t.string :rbi_ncop_no
      t.date :business_enrolment_date
      t.string :bank_name
      t.string :bank_account_no
      t.string :branch_name
      t.string :ifsc_code
      t.string :mobile_no

      t.timestamps null: false
    end
  end
end
