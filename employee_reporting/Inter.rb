require "./Employee.rb"
require "./email_reportable.rb"

class Inter < Employee
  include EmailReportable # this includes the methods found in the module
end