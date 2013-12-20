# -*- encoding : utf-8 -*-

class InitDb < ActiveRecord::Migration
  def change
    # create user
    query = 'INSERT INTO "users" ("created_at", "email", "encrypted_password", "updated_at") VALUES (\'Wed, 18 Dec 2013 21:31:10 \', \'pasha_kor@mail.ru\', \'$2a$10$BL7RXFrOap75RRat8LRarOCmwHI1tuUNDIazyclhHyEmxpiD/.kji\', \'Wed, 18 Dec 2013 21:31:10 UTC +00:00\' )'
    #ActiveRecord::Base.connection.execute( query )
    User.create!(created_at: 'Wed, 18 Dec 2013 21:31:10 UTC +00:00', email: 'pasha_kor@mail.ru', password: 'pasha1991', updated_at: 'Wed, 18 Dec 2013 21:31:10 UTC +00:00')


    # init HomeGalleryImages
    query = 'INSERT INTO "home_gallery_images" ("created_at", "updated_at") VALUES ( \'Wed, 18 Dec 2013 21:41:39 UTC +00:00\' , \'Wed, 18 Dec 2013 21:41:39 UTC +00:00\')'
    # ActiveRecord::Base.connection.execute( query )


    #MainMenuItem.create!( name: 'root_news', title: 'Новини', parent: nil, link: '/news' )
    #MainMenuItem.create!( name: 'root_about', title: 'Про нас', parent: nil, link: nil )
    #MainMenuItem.create!( name: 'root_what_we_do', title: 'Що ми робимо', parent: nil, link: '/what-we-do' )
    #MainMenuItem.create!( name: 'root_publications', title: 'Публікації', parent: nil, link: '/publications' )
    #MainMenuItem.create!( name: 'root_contact', title: 'Контакти', parent: nil, link: '/contact' )

    #MainMenuItem.create!( name: 'about_mission', title: 'Місія', parent: MainMenuItem.find_by_name( 'root_about' ), link: nil )
    #MainMenuItem.create!( name: 'about_geography', title: 'Географія', parent: MainMenuItem.find_by_name( 'root_about' ), link: nil )
    #MainMenuItem.create!( name: 'about_structure', title: 'Організаційна структура', parent: MainMenuItem.find_by_name( 'root_about' ), link: nil )
    #MainMenuItem.create!( name: 'about_history', title: 'Історія', parent: MainMenuItem.find_by_name( 'root_about' ), link: nil )
    #MainMenuItem.create!( name: 'about_active_projects', title: 'Діючі проекти', parent: MainMenuItem.find_by_name( 'root_about' ), link: nil )
    #MainMenuItem.create!( name: 'about_complete_projects', title: 'Реалізовані проекти', parent: MainMenuItem.find_by_name( 'root_about' ), link: nil )
    #MainMenuItem.create!( name: 'about_reports', title: 'Річні звіти', parent: MainMenuItem.find_by_name( 'root_about' ), link: nil )
    #MainMenuItem.create!( name: 'about_team', title: 'Наша команда', parent: MainMenuItem.find_by_name( 'root_about' ), link: nil )

    #MainMenuItem.create!( name: 'what_society_development', title: 'Розвиток громади', parent: MainMenuItem.find_by_name( 'root_what_we_do' ), link: nil )
    #MainMenuItem.create!( name: 'what_resource_center', title: 'Ресурсний центр для ОСН', parent: MainMenuItem.find_by_name( 'root_what_we_do' ), link: nil )
    #MainMenuItem.create!( name: 'what_andragogics', title: 'Андрагогіка', parent: MainMenuItem.find_by_name( 'root_what_we_do' ), link: nil )
    #MainMenuItem.create!( name: 'what_migration', title: 'Міграція', parent: MainMenuItem.find_by_name( 'root_what_we_do' ), link: nil )
    #MainMenuItem.create!( name: 'what_explore', title: 'Дослідження', parent: MainMenuItem.find_by_name( 'root_what_we_do' ), link: nil )


  end
end
