json.array!(@applicants) do |applicant|
  json.extract! applicant, :id, :name, :kana, :sex, :age, :tel, :email, :address
  json.url applicant_url(applicant, format: :json)
end
