module Admin::PageNodeAlterationsHelper
  def page_type
    result = ''
    display_name = @current_node.class.display_name
    unless display_name == 'Page'
      result = %{<span class="info"><small>(#{ h(display_name) })</small></span>}
    end
    if flow_meter = @current_node.flow_meter
      result << %{ <span class="info"><small>Redirects to #{link_to flow_meter.redirect_url_for_display, flow_meter.redirect_url_for_display}</small></span>}
    end
  end
end
