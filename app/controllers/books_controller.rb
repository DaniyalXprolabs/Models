class BooksController < ApplicationController

  def index
    @author=Author.find(params[:author_id])
    @book=@author.books.all
  end

  def create
    @author=Author.find(params[:author_id])
    @book=@author.books.create(book_params)
    redirect_to(@author)
  end


  def new
    @author=Author.find(params[:author_id])
    @book=@author.books
  end
  private
  def book_params
    params.require(:book).permit(:name,:language)
  end
end
