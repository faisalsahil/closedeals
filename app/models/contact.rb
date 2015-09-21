class Contact < ActiveRecord::Base
	belongs_to :account
	has_many :sequencememberships
	has_one :queued
	has_one :history
	attr_accessible :company, :first_name, :last_name, :website, :primary_email,:email2, :email3, :email4, :custom1, :custom2, :custom3, :last_reply_date,:sequence_id,:step_id
	
	attr_accessor :sequence_id,:step_id
    
    # validates :first_name, :last_name, presence: true
    # , uniqueness: {case_sensitive: false}
    validates :primary_email, presence: true,:format => {:with => /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i, :message => "format error",:multiline => true}
end
