class MyExamplesController < ApplicationController
  def The_way
    fortunes = [
      "Good news will come to you soon.",
      "An exciting opportunity lies ahead.",
      "A pleasant surprise awaits you.",
      "Happiness is just around the corner.",
      "Adventure is in your future.",
    ]

    puts "Your fortune: #{fortunes.sample}"
    numbers = (1..60).to_a

    def show
      session[:access_count] ||= 0  # Initialize the count if it doesn't exist
      session[:access_count] += 1    # Increment the count on each page load
      @access_count = session[:access_count] # Make it available to the view
    end

    show
    render json: { message: "A Wise man once said: #{fortunes.sample}" "and your  lucky number is..  #{numbers.sample}" " This page has been visited #{@access_count}  times " }
  end
end
