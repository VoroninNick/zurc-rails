class InitDb < ActiveRecord::Migration
  def change
    # create user
    query = 'INSERT INTO "users" ("created_at", "email", "encrypted_password", "updated_at") VALUES (\'Wed, 18 Dec 2013 21:31:10 \', \'pasha_kor@mail.ru\', \'$2a$10$BL7RXFrOap75RRat8LRarOCmwHI1tuUNDIazyclhHyEmxpiD/.kji\', \'Wed, 18 Dec 2013 21:31:10 UTC +00:00\' )'
    #ActiveRecord::Base.connection.execute( query )
    User.create!(created_at: 'Wed, 18 Dec 2013 21:31:10 UTC +00:00', email: 'pasha_kor@mail.ru', password: 'pasha1991', updated_at: 'Wed, 18 Dec 2013 21:31:10 UTC +00:00')


    # init HomeGalleryImages
    query = 'INSERT INTO "home_gallery_images" ("created_at", "updated_at") VALUES ( \'Wed, 18 Dec 2013 21:41:39 UTC +00:00\' , \'Wed, 18 Dec 2013 21:41:39 UTC +00:00\')'
    # ActiveRecord::Base.connection.execute( query )



  end
end
