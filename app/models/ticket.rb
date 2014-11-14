# app/models/ticket.rb
class Ticket < ActiveRecord::Base

  #before_initialize :set_default

  DEPARTMENT_SALES      = "sales".freeze
  DEPARTMENT_MARKETING      = "marketing".freeze
  DEPARTMENT_TECHNICAL      = "technical".freeze

  DEPARTMENTS = [ DEPARTMENT_SALES,
      DEPARTMENT_MARKETING,
      DEPARTMENT_TECHNICAL ]

  private

  def set_default
    self.response |= false
  end
end
