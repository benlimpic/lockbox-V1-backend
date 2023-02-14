  class Api::V1::KeysController < ApplicationController
    before_action :set_key, only: %i[show update destroy]
    # GET /keys or /keys.json
    def index
      @keys = Key.where(project_id: params[:project_id])
      render json: @keys
    end

    # GET /keys/1 or /keys/1.json
    def show
      @key = Key.find_by_id(params[:id])
      render json: @key
    end

    # POST /keys or /keys.json
    def create
      @key = Key.new(key_params)
      @key.project_id = params[:project_id]
        if @key.save
        render json: @key, status: :created
      else
        render json: @key.errors, status: :unprocessable_entity
      end
    end

    # PATCH/PUT /keys/1 or /keys/1.json
    def update
      if @key.update(key_params)
        render json: @key, status: :ok
      else
        render json: @key.errors, status: :unprocessable_entity
      end
    end

    # DELETE /keys/1 or /keys/1.json
    def destroy
      @key.destroy
      render json: { message: 'key deleted' }, status: :ok
    end

    private

    # Use callbacks to share common setup or constraints between actions.
    def set_key
      @key = Key.find_by_id(params[:id])
      render json: { error: 'key not found' }, status: :not_found if @key.nil?
    end

    # Only allow a list of trusted parameters through.
    def key_params
      params.require(:key).permit( :mac, :cut, :page, :reference, :assigneeName, :assigneeEmail, :assigneePhone, :details, :assignmentDate, :techName, :techEmail, :techPhone, :notes, :oDate, :keyTitle, :stamp, :description, :usable, :inUse, :reserved, :archived, :status, :project_id)
    end
  end

