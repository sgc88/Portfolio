class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  def pdf
    send_file(
      "#{Rails.root}/public/cv.pdf",
      filename: "cv.pdf",
      type: "resume/pdf"
    )
  end
end
