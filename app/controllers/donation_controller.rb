class DonationController < ApplicationController
  before_action :authenticate_ngo!, only: [:comments, :board]
  
  def new
     @donation = Donation.new
     @donation.state = Carmen::Country.coded('IN').subregions.flat_map(&:name).first
  end


   
  def create
    @donation = Donation.new(donation_params)
    @donation.status = 'pending'
       
    respond_to do |format|
      if @donation.save
        send_mail(@donation)
        format.html { redirect_to donation_done_path, notice: "Success! Your item has been posted to the board." }
      else
        format.html { render action: 'new' }
      end
    end
  end

  def show
    @d = Donation.find_by_id(params[:id])
  end
     
  def done
  end

  def board
    @donations = Donation.order('id DESC')
  end

  def comments
    Comment.create(:data => params[:comments][:data], :donation_id => params[:id], :ngo_id => current_ngo.id, selected: "false")
    redirect_to request.referer
  end
     
  def select
    @comment = Comment.find_by_id(params[:id])
    @comment.selected = true
    @comment.save!
    redirect_to request.referer
  end

  def deselect
    @comment = Comment.find_by_id(params[:id])
    @comment.selected = false
    @comment.save!
    redirect_to request.referer
  end
  
     
private

  require 'pledge_received_job'

  def donation_params
    params.require(:donation).permit(:name, :address1, :address2, :city, :state, :category, :email, :description, :full_name, :ph_no)
  end

  def send_mail(donation)
    # We call our sucker punch job asynchronously using "async"
      ::PledgeReceivedJob.new.async.perform(donation)
  end

  
  
    

end