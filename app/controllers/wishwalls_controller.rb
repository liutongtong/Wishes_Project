class WishwallsController < ApplicationController
  # GET /wishwalls
  # GET /wishwalls.json
  def index
    @wishwalls = Wishwall.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @wishwalls }
    end
  end

  # GET /wishwalls/1
  # GET /wishwalls/1.json
  def show
    @wishwall = Wishwall.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @wishwall }
    end
  end

  # GET /wishwalls/new
  # GET /wishwalls/new.json
  def new
    @wishwall = Wishwall.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @wishwall }
    end
  end

  # GET /wishwalls/1/edit
  def edit
    @wishwall = Wishwall.find(params[:id])
  end

  # POST /wishwalls
  # POST /wishwalls.json
  def create
    @wishwall = Wishwall.new(params[:wishwall])

    respond_to do |format|
      if @wishwall.save
        format.html { redirect_to @wishwall, notice: 'Wishwall was successfully created.' }
        format.json { render json: @wishwall, status: :created, location: @wishwall }
      else
        format.html { render action: "new" }
        format.json { render json: @wishwall.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /wishwalls/1
  # PUT /wishwalls/1.json
  def update
    @wishwall = Wishwall.find(params[:id])

    respond_to do |format|
      if @wishwall.update_attributes(params[:wishwall])
        format.html { redirect_to @wishwall, notice: 'Wishwall was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @wishwall.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /wishwalls/1
  # DELETE /wishwalls/1.json
  def destroy
    @wishwall = Wishwall.find(params[:id])
    @wishwall.destroy

    respond_to do |format|
      format.html { redirect_to wishwalls_url }
      format.json { head :no_content }
    end
  end
end
