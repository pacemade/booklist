class BooksController < ApplicationController

  def index
    respond_to do |format|
      format.html
      format.text
      format.csv do
        render plain: Book.generate_csv(Book.all)
      end
      format.json do
        render json: Book.all
      end
    end
  end

end
