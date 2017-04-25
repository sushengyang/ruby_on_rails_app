class Lending < ApplicationRecord
	validates :Name, presence: true, length: {maximum: 30}
	validates :Mailing_Address, presence: true, presence: true
	validates :Email, format: {with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }, presence: true
	validates :Assistant, presence: { message: "must be given please" }, length: {maximum: 30}, format:{:with => /\A[^0-9`!@#\$%\^&*+_=]+\z/}
	validates :Manager, presence: { message: "must be given please" }, length: {maximum: 30}, format:{:with => /\A[^0-9`!@#\$%\^&*+_=]+\z/}
end
