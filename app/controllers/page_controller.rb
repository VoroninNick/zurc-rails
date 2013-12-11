class PageController < ApplicationController
  def index
    render layout: 'home'
  end

  def contact
  end

  def custom_page
  end

  def what_we_do
    @breadcrumbs = [
        { title: 'ЩО МИ РОБИМО' }
    ]
  end
end
