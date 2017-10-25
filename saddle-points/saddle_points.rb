require_relative '../matrix/matrix'

class Matrix
  def saddle_points
    max = @rows.map(&:max)
    min = @columns.map(&:min)

    points = []
    @rows.each.with_index do |row, i|
      row.each.with_index do |val, j|
        points.push([i, j]) if val == max[i] && val == min[j]
      end
    end
    points
  end
end
