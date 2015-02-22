class RaidBossesController < ApplicationController
  before_action :set_raid_boss, only: [:show, :edit, :update, :destroy]

  # GET /raid_bosses
  # GET /raid_bosses.json
  def index
    @raid_bosses = RaidBoss.all
  end

  # GET /raid_bosses/1
  # GET /raid_bosses/1.json
  def show
  end

  # GET /raid_bosses/new
  def new
    @raid_boss = RaidBoss.new
  end

  # GET /raid_bosses/1/edit
  def edit
  end

  # POST /raid_bosses
  # POST /raid_bosses.json
  def create
    @raid_boss = RaidBoss.new(raid_boss_params)

    respond_to do |format|
      if @raid_boss.save
        format.html { redirect_to @raid_boss, notice: 'Raid boss was successfully created.' }
        format.json { render :show, status: :created, location: @raid_boss }
      else
        format.html { render :new }
        format.json { render json: @raid_boss.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /raid_bosses/1
  # PATCH/PUT /raid_bosses/1.json
  def update
    respond_to do |format|
      if @raid_boss.update(raid_boss_params)
        format.html { redirect_to @raid_boss, notice: 'Raid boss was successfully updated.' }
        format.json { render :show, status: :ok, location: @raid_boss }
      else
        format.html { render :edit }
        format.json { render json: @raid_boss.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /raid_bosses/1
  # DELETE /raid_bosses/1.json
  def destroy
    @raid_boss.destroy
    respond_to do |format|
      format.html { redirect_to raid_bosses_url, notice: 'Raid boss was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_raid_boss
      @raid_boss = RaidBoss.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def raid_boss_params
      params.require(:raid_boss).permit(:name)
    end
end
