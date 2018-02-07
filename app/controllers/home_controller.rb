class HomeController < ApplicationController
  # newly created controller
  def index
  	#newly created methos
  	#this methos by default will render the file inside app/views/home/index.html.erb
  end

  def expenses
  	# now that we have a controller method, we need to create a view file inside home(as controller name is home) and also make sure the view file name is same as the method name which is expenses in this case
  end

  def categories

  end
end
