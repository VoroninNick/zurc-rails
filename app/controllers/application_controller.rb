class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  helper_method :get_default_breadcrumbs

  def get_default_breadcrumbs
    breadcrumbs = [
        { title: 'ЩО МИ РОБИМО' }
    ]

    return breadcrumbs
  end

  helper_method :get_root_menu_items

  def get_root_menu_items
    root_items = MainMenuItem.where( :parent_id => nil ).order('display_index asc')

    return root_items
  end
end
