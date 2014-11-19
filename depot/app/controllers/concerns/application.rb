module Application
  extend ActiveSupport::Concern

  private

  def incrememt_counter
    session[:counter] ||= 0
    session[:counter] += 1
  end

  def reset_counter
    session[:counter] = 0
  end

end
