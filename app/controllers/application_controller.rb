class ApplicationController < ActionController::Base
  layout(false)

  # Add your actions below this line
  # ================================

  def play_rock
    #render({:html => "<h1>hello world</h1>".html_safe})
    render({ :template=> "game_templates/user_rock.html.erb"})
  end

  def play_paper
    redirect_to("https://www.wikipedia.org")
  end
  
  def play_scissors
    redirect_to("https://www.wikipedia.org")
  end

end
