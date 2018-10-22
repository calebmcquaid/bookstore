class BooksController < ApplicationController
  def index
    @books = Book.all
  end

  def show
    @book = Book.find(params[:id])
  end

  def new
    @book = Book.new
  end

  def create
    book = Book.create!(book_params)
    redirect_to books_path(book)
  end
end

private

def book_params
  params.require(:book).permit(:title, :description, :cover)
end
