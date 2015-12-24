json.array!(@members) do |member|
  json.extract! member, :id, :name, :father_name, :date_of_birth, :pan_no, :address, :nominee_name, :nominee_relationship, :nominee_date_of_birth, :rbi_cc_op_no, :rbi_ncop_no, :business_enrolment_date, :bank_name, :bank_account_no, :branch_name, :ifsc_code, :mobile_no
  json.url member_url(member, format: :json)
end
