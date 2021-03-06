# encoding: utf-8
class Building < ActiveRecord::Base
  belongs_to :housing
  belongs_to :region
  has_many :hosts, :order => "porch ASC"
  has_many :clients
  
  has_many :phones, :as => :owner
  accepts_nested_attributes_for :phones, :allow_destroy => true

  validates_presence_of :name, :on => :create, :message => "Не может быть пустым"
  validates_presence_of :region, :message => "can't be blank"
  
  def page_title
    self.name
  end
end
