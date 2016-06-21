module ApplicationHelper

  def bootstrap_class_for flash_type
   case flash_type
     when :success
       "alert-success"
     when :danger
       "alert-danger"
     when :warning
       "alert-warning"
     when :info
       "alert-info"
     else
       flash_type.to_s
   end
 end

end
