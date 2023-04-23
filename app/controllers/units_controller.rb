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
    elsif managers.count > 0
        managers.first.update(first_name: params[:first_name],
                              last_name: params[:last_name],
                              rank: params[:rank],
                              unit: helpers.current_user.unit)

    else
      Manager.create(first_name: params[:first_name],
                     last_name: params[:last_name],
                     rank: params[:rank],
                     unit: helpers.current_user.unit)
    end
    redirect_to unit_dashboard_path, message: "Manager successfully recorded"
  end
  def unit_remove_cadet
    @reg = Registration.where(event_id: params[:eid]).joins(:cadet).where(cadet: {id: params[:cid], unit: helpers.current_user.unit })
    @reg.destroy_all

    message = "The Cadet has been removed Successfully"

    if session[:fall_back_url] == nil
      redirect_to unit_dashboard_path, notice: message
    else
      redirect_to session[:fall_back_url], notice: message
    end
  end

  def unit_add_cadet

    event = Event.where(id: params[:eid]).first
    cadet = Cadet.where(id: params[:cid]).first
    registration = Registration.where(event: event).joins(:cadet).where(cadet: { unit: helpers.current_user.unit })
    number_registered = registration.count
    max_allowed = event.max_entries

    if number_registered >= max_allowed
      message = "The Cadet cannot be added the max number of cadets has been exceeded"
    else
      Registration.create(event: event, cadet: cadet)
      message = "The Cadet has been added successfully"
    end

    if session[:fall_back_url] == nil
      redirect_to unit_dashboard_path, notice: message
    else
      redirect_to session[:fall_back_url], notice: message
    end
  end

  def cadet_event_create

    event = Event.where(id: params[:eid]).first

    date_range = (Competition.comp_date - event.max_age.year + 1.day)..(Competition.comp_date)

    registration = Registration.where(event: event).joins(:cadet).where(cadet: { unit: helpers.current_user.unit })
    number_registered = registration.count
    max_allowed = event.max_entries

    if number_registered >= max_allowed
      message = "The Cadet cannot be added the max number of cadets has been exceeded"
    elsif !date_range.cover?(params[:dob].to_s.to_date)
      message = "The Cadet your trying to add is too old"
    elsif params[:gender].downcase != "male" and params[:gender].downcase != "female"
      message = "You need to enter a correct category Male/Female"
    else
      cadet = Cadet.create(first_name: params[:first_name],
                           last_name: params[:last_name],
                           date_of_birth: params[:dob],
                           cadet_id: params[:cid],
                           gender: params[:gender].downcase,
                           unit: helpers.current_user.unit)

      Registration.create(event: event, cadet: cadet)
      message = "The Cadet has  created and been added successfully"
    end




    if session[:fall_back_url] == nil
      redirect_to unit_dashboard_path, notice: message
    else
      redirect_to session[:fall_back_url], notice: message
    end

  end

end
