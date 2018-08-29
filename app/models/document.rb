class Document < ApplicationRecord
  belongs_to :med_case
  mount_uploader :document, DocumentUploader
end
