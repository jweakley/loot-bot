class RaidBossLootItemsController < ApplicationController
  before_action :set_raid_boss_loot_item, only: [:show, :edit, :update, :destroy]

  # GET /raid_boss_loot_items
  # GET /raid_boss_loot_items.json
  def index
    @raid_boss_loot_items = RaidBossLootItem.all
  end

  # GET /raid_boss_loot_items/1
  # GET /raid_boss_loot_items/1.json
  def show
  end

  # GET /raid_boss_loot_items/new
  def new
    @raid_boss_loot_item = RaidBossLootItem.new
  end

  # GET /raid_boss_loot_items/1/edit
  def edit
  end

  # POST /raid_boss_loot_items
  # POST /raid_boss_loot_items.json
  def create
    @raid_boss_loot_item = RaidBossLootItem.new(raid_boss_loot_item_params)

    respond_to do |format|
      if @raid_boss_loot_item.save
        format.html { redirect_to @raid_boss_loot_item, notice: 'Raid boss loot item was successfully created.' }
        format.json { render :show, status: :created, location: @raid_boss_loot_item }
      else
        format.html { render :new }
        format.json { render json: @raid_boss_loot_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /raid_boss_loot_items/1
  # PATCH/PUT /raid_boss_loot_items/1.json
  def update
    respond_to do |format|
      if @raid_boss_loot_item.update(raid_boss_loot_item_params)
        format.html { redirect_to @raid_boss_loot_item, notice: 'Raid boss loot item was successfully updated.' }
        format.json { render :show, status: :ok, location: @raid_boss_loot_item }
      else
        format.html { render :edit }
        format.json { render json: @raid_boss_loot_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /raid_boss_loot_items/1
  # DELETE /raid_boss_loot_items/1.json
  def destroy
    @raid_boss_loot_item.destroy
    respond_to do |format|
      format.html { redirect_to raid_boss_loot_items_url, notice: 'Raid boss loot item was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_raid_boss_loot_item
      @raid_boss_loot_item = RaidBossLootItem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def raid_boss_loot_item_params
      params.require(:raid_boss_loot_item).permit(:blizzard_id, :raid_boss_id)
    end
end
