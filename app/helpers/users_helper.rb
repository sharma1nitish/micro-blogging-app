module UsersHelper

	# Returns the Gravatar (http://gravatar.com/) for the given user.
	def gravatar_for(user) 
		gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
		gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}?d=http%3A%2F%2Fimg839.imageshack.us%2Fimg839%2F7595%2Ftargaryen3grat.png"
		image_tag(gravatar_url, alt: user.name, class: "gravatar")
	end	
end
