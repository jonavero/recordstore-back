class Api::V1::RecordsController < ApplicationController
  before_action :authorize_access_request!, except: [:show, :index]
  before_action :set_record, only: %i[ show update destroy ]

  # GET /records
  # GET /records.json
  def index
    @records = Record.all
  end

  # GET /records/1
  # GET /records/1.json
  def show
  end

  # POST /records
  # POST /records.json
  def create
    @record = Record.new(record_params)

    if @record.save
      render :show, status: :created, location: @record
    else
      render json: @record.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /records/1
  # PATCH/PUT /records/1.json
  def update
    if @record.update(record_params)
      render :show, status: :ok, location: @record
    else
      render json: @record.errors, status: :unprocessable_entity
    end
  end

  # DELETE /records/1
  # DELETE /records/1.json
  def destroy
    @record.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_record
      @record = Record.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def record_params
      params.require(:record).permit(:title, :year, :artist_id, :user_id)
    end
end
