class SalarySerializer < ActiveModel::Serializer
  attributes :id ,:issuedate ,:totaldays , :leavedays , :presentdays, :status , :comments

  belongs_to :employee
end
