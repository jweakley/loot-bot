class RaidBossKillsController < ApplicationController
  before_action :set_raid_boss_kill, only: [:show, :edit, :update, :destroy]

  # GET /raid_boss_kills
  # GET /raid_boss_kills.json
  def index
    @raid_boss_kills = RaidBossKill.all
  end

  # GET /raid_boss_kills/1
  # GET /raid_boss_kills/1.json
  def show
  end

  # GET /raid_boss_kills/new
  def new
    @raid_boss_kill = RaidBossKill.new
  end

  # GET /raid_boss_kills/1/edit
  def edit
  end

  # POST /raid_boss_kills
  # POST /raid_boss_kills.json
  def create
    @raid_boss_kill = RaidBossKill.new(raid_boss_kill_params)

    respond_to do |format|
      if @raid_boss_kill.save
        format.html { redirect_to @raid_boss_kill, notice: 'Raid boss kill was successfully created.' }
        format.json { render :show, status: :created, location: @raid_boss_kill }
      else
        format.html { render :new }
        format.json { render json: @raid_boss_kill.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /raid_boss_kills/1
  # PATCH/PUT /raid_boss_kills/1.json
  def update
    respond_to do |format|
      if @raid_boss_kill.update(raid_boss_kill_params)
        format.html { redirect_to @raid_boss_kill, notice: 'Raid boss kill was successfully updated.' }
        format.json { render :show, status: :ok, location: @raid_boss_kill }
      else
        format.html { render :edit }
        format.json { render json: @raid_boss_kill.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /raid_boss_kills/1
  # DELETE /raid_boss_kills/1.json
  def destroy
    @raid_boss_kill.destroy
    respond_to do |format|
      format.html { redirect_to raid_boss_kills_url, notice: 'Raid boss kill was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_raid_boss_kill
      @raid_boss_kill = RaidBossKill.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def raid_boss_kill_params
      params.require(:raid_boss_kill).permit(:raid_boss_id, :raid_id)
    end
end
