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
    redirect_to train_c_step3_path
  end

  def c_step3
    render 'train/chested/step3'
  end
  
  def c_step3_save
    redirect_to train_c_step4_path
  end

  def c_step4
    render 'train/chested/step4'
  end

  def c_step4_save
    redirect_to train_c_step5_path
  end

  def p_step1
    render 'train/potluck/step1'
  end

  def p_step1_save
    redirect_to train_p_step2_path
  end

  def p_step2
    render 'train/potluck/step2'
  end

  def p_step2_save
    redirect_to train_p_step3_path
  end

  def p_step3
    render 'train/potluck/step3'
  end

  def p_step3_save
    redirect_to train_p_step4_path
  end

  def p_step4
    render 'train/potluck/step4'
  end

  def p_step4_save
    redirect_to train_p_step5_path
  end
end
