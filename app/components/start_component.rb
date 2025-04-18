class StartComponent < ViewComponent::Base
  def initialize(current_step: 1, total_steps: 4)
    @current_step = current_step
    @total_steps = total_steps
  end
end 