class MentorshipPairingsController < ApplicationController
  def index
    @mentorship_pairings = MentorshipPairing.all

    render("mentorship_pairings/index.html.erb")
  end

  def show
    @mentorship_pairing = MentorshipPairing.find(params[:id])

    render("mentorship_pairings/show.html.erb")
  end

  def new
    @mentorship_pairing = MentorshipPairing.new

    render("mentorship_pairings/new.html.erb")
  end

  def create
    @mentorship_pairing = MentorshipPairing.new

    @mentorship_pairing.mentor_id = params[:mentor_id]
    @mentorship_pairing.mentee_id = params[:mentee_id]

    save_status = @mentorship_pairing.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/mentorship_pairings/new", "/create_mentorship_pairing"
        redirect_to("/mentorship_pairings")
      else
        redirect_back(:fallback_location => "/", :notice => "Mentorship pairing created successfully.")
      end
    else
      render("mentorship_pairings/new.html.erb")
    end
  end

  def edit
    @mentorship_pairing = MentorshipPairing.find(params[:id])

    render("mentorship_pairings/edit.html.erb")
  end

  def update
    @mentorship_pairing = MentorshipPairing.find(params[:id])

    @mentorship_pairing.mentor_id = params[:mentor_id]
    @mentorship_pairing.mentee_id = params[:mentee_id]

    save_status = @mentorship_pairing.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/mentorship_pairings/#{@mentorship_pairing.id}/edit", "/update_mentorship_pairing"
        redirect_to("/mentorship_pairings/#{@mentorship_pairing.id}", :notice => "Mentorship pairing updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Mentorship pairing updated successfully.")
      end
    else
      render("mentorship_pairings/edit.html.erb")
    end
  end

  def destroy
    @mentorship_pairing = MentorshipPairing.find(params[:id])

    @mentorship_pairing.destroy

    if URI(request.referer).path == "/mentorship_pairings/#{@mentorship_pairing.id}"
      redirect_to("/", :notice => "Mentorship pairing deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Mentorship pairing deleted.")
    end
  end
end
