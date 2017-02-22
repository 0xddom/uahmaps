# coding: utf-8
module AuthenticationWithGuests
 def current_or_guest_user
    if current_user
      if session[:guest_user_id] && session[:guest_user_id] != current_user.id
        logging_in

        guest_user(with_retry = false).reload.try(:destroy)
        session[:guest_user_id] = nil
      end
      current_user
    else
      guest_user
    end
  end

  def guest_user(with_retry = true)
    @cached_guest_user ||= User.find(session[:guest_user_id] ||= create_guest_user.id)

  rescue ActiveRecord::RecordNotFound
    session[:guest_user_id] = nil
    guest_user if with_retry
  end

  def logging_in
    # Lógica para poner los datos del invitado en el usuario de verdad
  end

  def create_guest_user
    u = User.create({
                      name: 'Invitado',
                      email: "guest_#{Time.now.to_i}#{rand(100)}@uahmaps.es",
                      is_guest: true
                    })
    u.save!({validate: false})
    session[:guest_user_id] = u.id
    u
  end
end

class AuthenticatedController < ApplicationController
  protect_from_forgery
  include AuthenticationWithGuests   
end
