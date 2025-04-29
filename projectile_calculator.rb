
class ProjectileCalculator
  attr_reader :start_time, :end_time, :height

  def initialize
    @gravity = 9.81 # m/s²
    @start_time = nil
    @end_time = nil
    @height = nil
  end

  def start_timer
    @start_time = Time.now
  end

  def stop_timer
    @end_time = Time.now
  end

  def calculate_height(delta_t)
    # second equation of uniform linear motion
    @height = @gravity / 2 * (delta_t / 2)**2
  end
end