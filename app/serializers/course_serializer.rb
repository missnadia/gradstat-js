class CourseSerializer < ActiveModel::Serializer
  attributes :id, :name, :time_spent, :completed, :date, :student_id
  has_many :students, through: :course_students
  has_many :comments
  belongs_to :student
end
