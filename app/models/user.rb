class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :timeoutable
  has_many :creditcards, dependent: :destroy
  belongs_to :role

  def full_name
    "#{self.first_name} #{self.last_name}"
  end

  extend FriendlyId
  friendly_id :username, use: :slugged

  def self.authenticate(username, password)
    user = User.find_for_authentication(:username => username)
    user.valid_password?(password) ? user : nil
  end

  def timeout_in
    if self.admin? 
      1.hour
    else
      10.minutes
    end
  end

  private
  def set_default_role
    self.role ||= Role.find_by_name('registered')
  end

end
