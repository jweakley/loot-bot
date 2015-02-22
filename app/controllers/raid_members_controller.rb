class RaidMembersController < ApplicationController
  before_action :set_raid_member, only: [:show, :edit, :update, :destroy]

  # GET /raid_members
  # GET /raid_members.json
  def index
    @raid_members = RaidMember.all
  end

  # GET /raid_members/1
  # GET /raid_members/1.json
  def show
  end

  # GET /raid_members/new
  def new
    @raid_member = RaidMember.new
  end

  # GET /raid_members/1/edit
  def edit
  end

  # POST /raid_members
  # POST /raid_members.json
  def create
    @raid_member = RaidMember.new(raid_member_params)

    respond_to do |format|
      if @raid_member.save
        format.html { redirect_to @raid_member, notice: 'Raid member was successfully created.' }
        format.json { render :show, status: :created, location: @raid_member }
      else
        format.html { render :new }
        format.json { render json: @raid_member.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /raid_members/1
  # PATCH/PUT /raid_members/1.json
  def update
    respond_to do |format|
      if @raid_member.update(raid_member_params)
        format.html { redirect_to @raid_member, notice: 'Raid member was successfully updated.' }
        format.json { render :show, status: :ok, location: @raid_member }
      else
        format.html { render :edit }
        format.json { render json: @raid_member.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /raid_members/1
  # DELETE /raid_members/1.json
  def destroy
    @raid_member.destroy
    respond_to do |format|
      format.html { redirect_to raid_members_url, notice: 'Raid member was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_raid_member
      @raid_member = RaidMember.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def raid_member_params
      params.require(:raid_member).permit(:character_name, :realm)
    end
end
