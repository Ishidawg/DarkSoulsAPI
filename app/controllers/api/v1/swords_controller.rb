class Api::V1::SwordsController < ApplicationController
  before_action :set_sword, only: %i[show update destroy]

  deserializable_resource :position, only: %i[create update]

  # GET /swords
  def index
    swords = Sword.all
    render json: SwordSerializer.new(swords).serializable_hash.to_json
  end

  # GET /swords/1
  def show
    render json: SwordSerializer.new(@sword).serializable_hash.to_json
  rescue ActiveRecord::RecordNotFound
    render json: { error: 'Sword not found' }, status: :not_found
  end

  # POST /swords
  def create
    sword = Sword.new(sword_params)

    if sword.save
      render json: SwordSerializer.new(sword).serializable_hash.to_json, status: :created
    else
      render json: { error: "Can't create the sword", messages: sword.errors.full_messages },
             status: :unprocessable_entity
    end
  end

  # PATCH/PUT /swords/1
  def update
    if @sword.update(sword_params)
      render json: SwordSerializer.new(@sword).serializable_hash.to_json
    else
      render json: { error: "Can't update the sword", messages: @sword.errors.full_messages },
             status: :unprocessable_entity
    end
  end

  # DELETE /swords/1
  def destroy
    @sword.destroy!
    head :no_content
  end

  private

  def set_sword
    @sword = Sword.find(params[:id])
  rescue ActiveRecord::RecordNotFound
    render json: { error: 'Sword not found' }, status: :not_found
  end

  def sword_params
    params.require(:data).require(:attributes).permit(:name, :material, :attack, :durability, :weaponclass,
                                                      :description, :price)
  end
end
