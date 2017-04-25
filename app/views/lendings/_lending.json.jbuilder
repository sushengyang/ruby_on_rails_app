json.extract! lending, :id, :Name, :NickName, :Mailing_Address, :Email, :Phone, :SSN, :Passport, :Visa, :Assistant, :Manager, :Creator, :Create_Date, :Open_Date, :Prelim_Date, :Appraisal_Date, :Inspection_Date, :created_at, :updated_at
json.url lending_url(lending, format: :json)
