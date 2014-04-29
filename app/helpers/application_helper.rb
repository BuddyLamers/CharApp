module ApplicationHelper

  def auth_token
    "<input type='hidden'
    name='authenticity_token'
    value='#{form_authenticity_token}'>".html_safe
  end

  def count_html(count)
     "<i class='count'>
     #{count}
     </i>".html_safe
  end

  def title_link_count_html(title, link, count)
    "<li>
      <a href='#{link}'>
      #{title} <i class='count'>#{count}</i>
      </a>
    </li>".html_safe
  end

end
