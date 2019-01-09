class StudentSerializer < ActiveModel::Serializer
  attributes :id, username, :password, :email, :first_name, :last_name, :admin, :name
  has_many :course_students
  has_many :courses through: course_students
  has_many :comments, through: :courses
end
