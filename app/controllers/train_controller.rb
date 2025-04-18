class TrainController < ApplicationController
  def index
  end

  # Chesed Train Steps
  
  def c_step1
    render_step('train/chested/step1')
  end
  
  def c_step1_save
    save_to_session([:recipient_name, :recipient_email])
    redirect_to train_c_step2_path
  end

  def c_step2
    render_step('train/chested/step2')
  end

  def c_step2_save
    save_to_session([:street_address, :address, :city, :state])
    redirect_to train_c_step3_path
  end

  def c_step3
    render_step('train/chested/step3')
  end
  
  def c_step3_save
    save_to_session([:meal_preferences, :dietary_restrictions, :allergies])
    redirect_to train_c_step4_path
  end

  def c_step4
    render_step('train/chested/step4')
  end

  def c_step4_save
    save_to_session([:start_date, :end_date, :notes])
    
    # Here you would typically save all the collected data to the database
    # create_chesed_train
    
    redirect_to train_path, notice: "Chesed Train created successfully!"
  end

  # Potluck Train Steps
  
  def p_step1
    render_step('train/potluck/step1')
  end

  def p_step1_save
    save_to_session([:potluck_name, :potluck_email])
    redirect_to train_p_step2_path
  end

  def p_step2
    render_step('train/potluck/step2')
  end

  def p_step2_save
    save_to_session([:potluck_location, :potluck_address, :potluck_city, :potluck_state])
    redirect_to train_p_step3_path
  end

  def p_step3
    render_step('train/potluck/step3')
  end

  def p_step3_save
    save_to_session([:potluck_date, :potluck_time, :potluck_type])
    redirect_to train_p_step4_path
  end

  def p_step4
    render_step('train/potluck/step4')
  end

  def p_step4_save
    save_to_session([:potluck_items_needed, :potluck_notes])
    
    # Here you would typically save all the collected data to the database
    # create_potluck_train
    
    redirect_to train_path, notice: "Potluck Train created successfully!"
  end

  private

  def render_step(template)
    render template
  end

  def save_to_session(keys)
    keys.each do |key|
      session[key] = params[key] if params[key].present?
    end
  end

  # Placeholder for future implementation
  # def create_chesed_train
  #   # Create a new Chesed Train record in the database
  #   # using the data stored in the session
  # end

  # Placeholder for future implementation
  # def create_potluck_train
  #   # Create a new Potluck Train record in the database
  #   # using the data stored in the session
  # end
end
