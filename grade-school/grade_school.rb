class School
  def initialize
    @students = Hash.new { |h, k| h[k] = [] }
  end

  def add(student, grade)
    @students[grade].push(student).sort!
  end

  def students(grade)
    @students[grade]
  end

  def students_by_grade
    @students.map { |grade, students| {grade: grade, students: students} }.sort_by { |e| e[:grade] }
  end
end

module BookKeeping
  VERSION = 3
end
