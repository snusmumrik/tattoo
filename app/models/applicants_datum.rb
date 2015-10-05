class ApplicantsDatum < ActiveRecord::Base
  belongs_to :applicant
  belongs_to :datum
end
