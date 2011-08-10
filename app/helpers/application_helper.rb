module ApplicationHelper
  
  def body_id
    a = %w{ new edit create update }
    a.include?("#{controller.action_name}") ? "form_page" : nil
  end
end
