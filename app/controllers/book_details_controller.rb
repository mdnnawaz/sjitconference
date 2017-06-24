class BookDetailsController < ApplicationController
  before_action :set_book_detail, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  # GET /book_details
  # GET /book_details.json
  def index
    @book_details = BookDetail.where(user_id: current_user.id)
  end

  # GET /book_details/1
  # GET /book_details/1.json
  def show
  end

  # GET /book_details/new
  def new
    @book_detail = BookDetail.new
  end

  # GET /book_details/1/edit
  def edit
  end

  # POST /book_details
  # POST /book_details.json
  def create
    @book_detail = BookDetail.new(book_detail_params)
    @book_detail.user_id = current_user.id
    respond_to do |format|
      if @book_detail.save
        format.html { redirect_to index_path, notice: 'Book detail was successfully created.' }
        format.json { render :show, status: :created, location: @book_detail }
      else
        format.html { render :new }
        format.json { render json: @book_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /book_details/1
  # PATCH/PUT /book_details/1.json
  def update
    respond_to do |format|
      if @book_detail.update(book_detail_params)
        format.html { redirect_to @book_detail, notice: 'Book detail was successfully updated.' }
        format.json { render :show, status: :ok, location: @book_detail }
      else
        format.html { render :edit }
        format.json { render json: @book_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /book_details/1
  # DELETE /book_details/1.json
  def destroy
    @book_detail.destroy
    respond_to do |format|
      format.html { redirect_to book_details_url, notice: 'Book detail was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_book_detail
      @book_detail = BookDetail.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def book_detail_params
      params.require(:book_detail).permit(:book_title, :one_author_name, :one_designation, :one_organization,:two_author_name, :two_designation, :two_organization, :three_author_name, :three_designation, :three_organization,:publisher_name, :publisher_address, :isbn, :one_publication, :edition_number, :reprint_year)
    end
end
