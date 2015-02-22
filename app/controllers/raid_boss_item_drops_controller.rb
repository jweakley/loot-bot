class RaidBossItemDropsController < ApplicationController
  before_action :set_raid_boss_item_drop, only: [:show, :edit, :update, :destroy]

  # GET /raid_boss_item_drops
  # GET /raid_boss_item_drops.json
  def index
    @raid_boss_item_drops = RaidBossItemDrop.all
  end

  # GET /raid_boss_item_drops/1
  # GET /raid_boss_item_drops/1.json
  def show
  end

  # GET /raid_boss_item_drops/new
  def new
    @raid_boss_item_drop = RaidBossItemDrop.new
  end

  # GET /raid_boss_item_drops/1/edit
  def edit
  end

  # POST /raid_boss_item_drops
  # POST /raid_boss_item_drops.json
  def create
    @raid_boss_item_drop = RaidBossItemDrop.new(raid_boss_item_drop_params)

    respond_to do |format|
      if @raid_boss_item_drop.save
        format.html { redirect_to @raid_boss_item_drop, notice: 'Raid boss item drop was successfully created.' }
        format.json { render :show, status: :created, location: @raid_boss_item_drop }
      else
        format.html { render :new }
        format.json { render json: @raid_boss_item_drop.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /raid_boss_item_drops/1
  # PATCH/PUT /raid_boss_item_drops/1.json
  def update
    respond_to do |format|
      if @raid_boss_item_drop.update(raid_boss_item_drop_params)
        format.html { redirect_to @raid_boss_item_drop, notice: 'Raid boss item drop was successfully updated.' }
        format.json { render :show, status: :ok, location: @raid_boss_item_drop }
      else
        format.html { render :edit }
        format.json { render json: @raid_boss_item_drop.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /raid_boss_item_drops/1
  # DELETE /raid_boss_item_drops/1.json
  def destroy
    @raid_boss_item_drop.destroy
    respond_to do |format|
      format.html { redirect_to raid_boss_item_drops_url, notice: 'Raid boss item drop was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_raid_boss_item_drop
      @raid_boss_item_drop = RaidBossItemDrop.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def raid_boss_item_drop_params
      params.require(:raid_boss_item_drop).permit(:blizzard_id, :raid_boss_kill_id)
    end
end
