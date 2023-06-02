class UnitsController < ApplicationController
  before_action :authenticate

  def event_edit
    @curr = Event.find_by_id(params[:id])
    session[:fall_back_url] = request.url
  end

  def edit_manager
    session[:fall_back_url] = request.url
  end

  def push_manager
    managers = Manager.where(unit: helpers.current_user.unit)
    if params[:first_name] == "" or params[:last_name] == ""
      message = "You need spesify a firstname and a lastname"
      redirect_to session[:fall_back_url], notice: message
      return
    elsif params[:phone] == "" and params[:email] == ""
      message = "You need provide a email or phone number"
      redirect_to session[:fall_back_url], notice: message
      return
    elsif managers.count > 0
      managers.first.update(first_name: params[:first_name],
                            last_name: params[:last_name],
                            rank: params[:rank],
                            email: params[:email],
                            phone: params[:phone],
                            unit: helpers.current_user.unit)

    else
      Manager.create(first_name: params[:first_name],
                     last_name: params[:last_name],
                     rank: params[:rank],
                     email: params[:email],
                     phone: params[:phone],
                     unit: helpers.current_user.unit)
    end
    redirect_to unit_dashboard_path, message: "Manager successfully recorded"
  end

  def push_cadet
    cadet = Cadet.where(id: params[:cid])

    if params[:firstname] == "" or params[:lastname] == ""
      message = "You need specify a firstname and a lastname"
      redirect_to session[:fall_back_url], notice: message
      return
    elsif params[:cid] == ""
      message = "You Need to provide a CID"
      redirect_to session[:fall_back_url], notice: message
      return
    elsif params[:gender].downcase != "male" and params[:gender].downcase != "female"
      message = "You need to enter a correct category Male/Female"
      redirect_to session[:fall_back_url], notice: message
      return
    elsif cadet.count > 0

      registrations = Registration.where(cadet: cadet.first)

      registrations.each do |r|

        if r.event.max_age == 15
          if r.event.gender == "female"
            date_range = (Date.new(2023, 8, 31) - r.event.max_age.year)..Date.new(2023, 8, 31)
          else
            date_range = (Date.new(2023, 8, 31) - r.event.max_age.year)..Date.new(2023, 8, 31)
          end
        elsif r.event.max_age == 17
          date_range = (Date.new(2023, 8, 31) - r.event.max_age.year)..(Date.new(2023, 8, 31) - 15.year - 1.day)
        elsif r.event.max_age == 20
          if r.event.gender == "female"
            date_range = (Date.new(2023, 12, 31) - r.event.max_age.year)..(Date.new(2023, 8, 31) - 15.year - 1.day)
          else
            date_range = (Date.new(2023, 12, 31) - r.event.max_age.year)..(Date.new(2023, 8, 31) - 17.year - 1.day)
          end
        end

        unless date_range.cover?(params[:dob].to_s.to_date)
          message = "The Cadet your to edit is already subscribed to a event for which the new DOB is invalid"
          redirect_to cadet_edit_path, notice: message
          return
        end
      end

      cadet.first.update(first_name: params[:firstname],
                         last_name: params[:lastname],
                         cadet_id: params[:cid],
                         gender: params[:gender],
                         date_of_birth: params[:dob],
                         unit: helpers.current_user.unit)

    else
      Cadet.create(first_name: params[:firstname],
                   last_name: params[:lastname],
                   cadet_id: params[:cid],
                   gender: params[:gender],
                   date_of_birth: params[:dob],
                   unit: helpers.current_user.unit)
    end
    redirect_to cadet_edit_path, message: "Cadet successfully Edited/Created"
  end

  def delete_cadet
    redirect_to cadet_edit_path, message: "Can not delete cadets anymore"
  end

  def unit_remove_cadet

    message = "The Cadet Cannot be removed"

    if session[:fall_back_url] == nil
      redirect_to unit_dashboard_path, notice: message
    else
      redirect_to session[:fall_back_url], notice: message
    end
  end

  def unit_add_cadet

    message = "This Cannot be done at this time now"

    if session[:fall_back_url] == nil
      redirect_to unit_dashboard_path, notice: message
    else
      redirect_to session[:fall_back_url], notice: message
    end
  end

  def cadet_create
    if params[:firstname] == "" or params[:lastname] == ""
      message = "You need specify a firstname and a lastname"
      redirect_to cadet_edit_path, notice: message
      return
    elsif params[:cid] == ""
      message = "You Need to provide a CID"
      redirect_to cadet_edit_path, notice: message
      return
    elsif params[:gender].downcase != "male" and params[:gender].downcase != "female"
      message = "You need to enter a correct category Male/Female"
      redirect_to cadet_edit_path, notice: message
      return
    else
      cadet = Cadet.create(first_name: params[:first_name],
                           last_name: params[:last_name],
                           date_of_birth: params[:dob],
                           cadet_id: params[:cid],
                           gender: params[:gender].downcase,
                           unit: helpers.current_user.unit)

      message = "The Cadet has  created successfully"
    end
    redirect_to cadet_edit_path, notice: message
  end

  def cadet_event_create

    message = "This cannot be done anymore"

    if session[:fall_back_url] == nil
      redirect_to unit_dashboard_path, notice: message
    else
      redirect_to session[:fall_back_url], notice: message
    end

  end

end
