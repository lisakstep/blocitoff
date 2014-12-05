class User < ActiveRecord::Base

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable

  has_one :list

  after_create :add_list

  private

  def add_list
    list = List.new(title: "#{name}'s List", user_id: id).save!
  end
end
