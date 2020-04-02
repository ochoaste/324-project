module AdopteesHelper

 # Returns the Gravatar for the given adoptee.
  def gravatar_for(adoptee, options = { size: 80 })
    gravatar_id = Digest::MD5::hexdigest(adoptee.email.downcase)
    size = options[:size]
    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}?s=#{size}"
    image_tag(gravatar_url, alt: adoptee.name, class: "gravatar")
  end

end
