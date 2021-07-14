class ApplicationController < ActionController::Base
  layout(false)

  # Add your actions below this line
  # ================================

  def home_page
    #render({:html => "<h1>hello world</h1>".html_safe})
    render({ :template=> "game_templates/home_page.html.erb"})
  end

  def play_rock
    @move = ["rock","paper","scissors"].sample
    if @move == "rock"
      @result = "tied"
    elsif @move == "paper"
      @result = "lost"
    else
      @result = "won"
    end
    render({ :template=> "game_templates/user_rock.html.erb"})
  end

  def play_paper
    @move = ["rock","paper","scissors"].sample
    if @move == "rock"
      @result = "won"
    elsif @move == "paper"
      @result = "tied"
    else
      @result = "lost"
    end
    render({ :template=> "game_templates/user_paper.html.erb"})
  end
  
  def play_scissors
    @move = ["rock","paper","scissors"].sample
    if @move == "rock"
      @result = "lost"
    elsif @move == "paper"
      @result = "won"
    else
      @result = "tied"
    end
    render({ :template=> "game_templates/user_scissors.html.erb"})
  end

end
