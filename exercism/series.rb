class Series
  # 1st initialize
  def initialize(series)
    @series = series
  end
  def slices(n)
    number_of_digits = @series.size
    sequence_holder = []
    while n <= number_of_digits do
      newseries = @series  
      sequence_holder.push(newseries[0,n])
      newseries.drop(1)
    end
  end

end
