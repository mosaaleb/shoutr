module ShoutHelper
  
  def avatar(user)
    email_digest = Digest::MD5::hexdigest(user.email)
    gravatar_url = "//www.gravatar.com/avatar/#{email_digest}"
    image_tag gravatar_url, class: 'profile-image'
  end

  def like_button(shout)
    if current_user.liked?(shout)
      link_to image_tag('dislike.png'), unlike_shout_path(shout), method: :delete, class: 'like-btn'
    else
      link_to image_tag('like.png'), like_shout_path(shout), method: :post, class: 'like-btn'
    end
  end

  def likes_counter(shout)
    Like.where(shout_id: shout.id).count
  end
end