module ApplicationHelper

  def flash_alert_class(name)
    case name
    when 'notice' then 'alert-success'
    when 'alert'  then 'alert-danger'
    else
      "alert-#{name}"
    end
  end

end
