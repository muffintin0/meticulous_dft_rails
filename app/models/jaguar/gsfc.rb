class Jaguar::Gsfc < ActiveRecord::Base
  self.table_name = "gsfcjob"
  attr_protected :id
  
  def to_param
    unique_name
  end
end
  