class FileTemplate < ApplicationRecord

  belongs_to :file_type


  def to_s
    name
  end

end
