# encoding: utf-8
class Building < ActiveRecord::Base
  validates_presence_of :name, :on => :create, :message => "Не может быть пустым"
end
