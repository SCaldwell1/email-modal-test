class TestEmailModalsController < ApplicationController
  before_action :set_test_email_modal, only: [:show, :edit, :update, :destroy]

  # GET /test_email_modals
  # GET /test_email_modals.json
  def index
    @test_email_modals = TestEmailModal.all
  end

  # GET /test_email_modals/1
  # GET /test_email_modals/1.json
  def show
  end

  # GET /test_email_modals/new
  def new
    @test_email_modal = TestEmailModal.new
  end

  # GET /test_email_modals/1/edit
  def edit
  end

  # POST /test_email_modals
  # POST /test_email_modals.json
  def create
    @test_email_modal = TestEmailModal.new(test_email_modal_params)

    respond_to do |format|
      if @test_email_modal.save
        format.html { redirect_to @test_email_modal, notice: 'Test email modal was successfully created.' }
        format.json { render :show, status: :created, location: @test_email_modal }
      else
        format.html { render :new }
        format.json { render json: @test_email_modal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /test_email_modals/1
  # PATCH/PUT /test_email_modals/1.json
  def update
    respond_to do |format|
      if @test_email_modal.update(test_email_modal_params)
        format.html { redirect_to @test_email_modal, notice: 'Test email modal was successfully updated.' }
        format.json { render :show, status: :ok, location: @test_email_modal }
      else
        format.html { render :edit }
        format.json { render json: @test_email_modal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /test_email_modals/1
  # DELETE /test_email_modals/1.json
  def destroy
    @test_email_modal.destroy
    respond_to do |format|
      format.html { redirect_to test_email_modals_url, notice: 'Test email modal was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_test_email_modal
      @test_email_modal = TestEmailModal.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def test_email_modal_params
      params.require(:test_email_modal).permit(:title, :content, :slug)
    end
end
