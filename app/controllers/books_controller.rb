class BooksController < ApplicationController
  
  def index
    @main = Book.all
    @new = Book.new
  end
  
  
  def create
    @new = Book.new(book_params)
    if @new.save
      flash[:success] = 'The book was successfully submitted.'
      redirect_to book_path(@new.id)
    else 
      @main = Book.all
      render :index
      
    end
  end

  def show
    @shousai = Book.find(params[:id])
  end

  def edit
    @book = Book.find(params[:id])
  end
  
  def update
    @book = Book.find(params[:id])
    if @book.update(book_params)
      flash[:success] = 'The book was successfully updated.'
      redirect_to book_path(@book)
    else
      render :edit
    end
  end
  
  def destroy
    book = Book.find(params[:id])  
    book.destroy
    flash[:delete] = 'The book was succesfully destroyed.'
    redirect_to books_path
  end
  

  private
  
  def book_params
    params.require(:book).permit(:title, :body)
  end
  
end