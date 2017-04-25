class CreateLendings < ActiveRecord::Migration[5.0]
  def change
    create_table :lendings do |t|
      t.string :Name
      t.string :NickName
      t.string :Mailing_Address
      t.string :Email
      t.string :Phone
      t.string :SSN
      t.string :Passport
      t.string :Visa
      t.string :Assistant
      t.string :Manager
      t.string :Creator
      t.date :Create_Date
      t.date :Open_Date
      t.date :Prelim_Date
      t.date :Appraisal_Date
      t.date :Inspection_Date

      t.timestamps
    end
  end
end
