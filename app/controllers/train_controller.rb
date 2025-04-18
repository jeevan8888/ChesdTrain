class TrainController < ApplicationController
  def index
  end

  def c_step1
    render 'train/chested/step1'
  end
  
  def c_step1_save
    session[:recipient_name] = params[:recipient_name]
    session[:recipient_email] = params[:recipient_email]
  
    redirect_to train_c_step2_path
  end

  def c_step2
    render 'train/chested/step2'
  end

  def c_step2_save
    session[:street_address] = params[:street_address]
    session[:address] = params[:address]
    session[:city] = params[:city]
    session[:state] = params[:state]
    
    redirect_to train_c_step3_path
  end

  def c_step3
    render 'train/chested/step3'
  end
  
  def c_step3_save
    session[:meal_preferences] = params[:meal_preferences]
    session[:dietary_restrictions] = params[:dietary_restrictions]
    session[:allergies] = params[:allergies]
    
    redirect_to train_c_step4_path
  end

  def c_step4
    render 'train/chested/step4'
  end

  def c_step4_save
    session[:start_date] = params[:start_date]
    session[:end_date] = params[:end_date]
    session[:notes] = params[:notes]
    
    # Here you would typically save all the collected data to the database
    # For now, we'll just redirect with a success message
    redirect_to train_path, notice: "Chesed Train created successfully!"
  end

  def p_step1
    render 'train/potluck/step1'
  end

  def p_step1_save
    session[:potluck_name] = params[:potluck_name]
    session[:potluck_email] = params[:potluck_email]
    
    redirect_to train_p_step2_path
  end

  def p_step2
    render 'train/potluck/step2'
  end

  def p_step2_save
    session[:potluck_location] = params[:potluck_location]
    session[:potluck_address] = params[:potluck_address]
    session[:potluck_city] = params[:potluck_city]
    session[:potluck_state] = params[:potluck_state]
    
    redirect_to train_p_step3_path
  end

  def p_step3
    render 'train/potluck/step3'
  end

  def p_step3_save
    session[:potluck_date] = params[:potluck_date]
    session[:potluck_time] = params[:potluck_time]
    session[:potluck_type] = params[:potluck_type]
    
    redirect_to train_p_step4_path
  end

  def p_step4
    render 'train/potluck/step4'
  end

  def p_step4_save
    session[:potluck_items_needed] = params[:potluck_items_needed]
    session[:potluck_notes] = params[:potluck_notes]
    
    # Here you would typically save all the collected data to the database
    # For now, we'll just redirect with a success message
    redirect_to train_path, notice: "Potluck Train created successfully!"
  end
end
