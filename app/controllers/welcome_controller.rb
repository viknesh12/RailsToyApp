class WelcomeController < ApplicationController
  def index
  end

  def params_check
  	puts "*** printing parameters"
  	p params
  	puts "*** printing parameters"

  	puts "*** printing request"
  	p request
  	puts "*** printing request"

  end
end
