module UsersHelper
  def avatar_url(user)
    if user.image.present?
      user.image
    else
      # create the md5 hash
      hash = Digest::MD5.hexdigest(user.email)
   
      # compile URL which can be used in <img src="RIGHT_HERE"...
      image_src = "http://www.gravatar.com/avatar/#{hash}?s=150"
    end
  end
end
