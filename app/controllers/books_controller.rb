class BooksController < ApplicationController
  before_action :set_book, only: [:show, :edit, :update, :destroy]

  def index
    @q = Book.ransack(params[:q])
    @books = @q.result(distinct: true)
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)

    if @book.save
      redirect_to books_path, notice: 'El libro fue creado correctamente.'
    else
      flash.now[:alert] = 'El libro no pudo ser creado. Intenta Nuevamente.'
      render :new
    end
  end

  def edit
  end

  def update
    if @book.update(book_params)
      redirect_to books_path, notice: 'El libro se actualizo correctamente.'
    else
      flash.now[:alert] = 'El libro no pudo ser creado.'
      render :edit
    end
  end

  def show
  end

  def destroy
    @book.destroy
    redirect_to books_url, notice: 'El libro fue eliminado correctamente.'
  end

  private
    def set_book
      @book = Book.find(params[:id])
    end

    def book_params
      params.require(:book).permit(:title, :author, :status)
    end
end