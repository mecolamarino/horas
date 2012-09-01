class HoursController < ApplicationController
  # GET /hours
  # GET /hours.json
  def index

   if @current_user.client
	@hours = Hour.where(:company_id => current_user.client.company).order("fecha DESC")
   else
	@hours = Hour.order("fecha DESC")
   end


    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @hours }
    end
  end

  # GET /hours/1
  # GET /hours/1.json
  def show
    @hour = Hour.find(params[:id])
    @hour.owner = Owner.find(params[:owner_id]) if params[:owner_id]
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @hour }
    end
  end

  # GET /hours/new
  # GET /hours/new.json
  def new
    @hour = Hour.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @hour }
    end
  end

  # GET /hours/1/edit
  def edit
    @hour = Hour.find(params[:id])
  end

  # POST /hours
  # POST /hours.json
  def create
    @hour = Hour.new(params[:hour])
    @hour.owner = current_user.owner
    respond_to do |format|
      if @hour.save
        format.html { redirect_to @hour, notice: 'Hour was successfully created.' }
        format.json { render json: @hour, status: :created, location: @hour }
      else
        format.html { render action: "new" }
        format.json { render json: @hour.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /hours/1
  # PUT /hours/1.json
  def update
    @hour = Hour.find(params[:id])
    @hour.client = current_user.client if current_user.client

    respond_to do |format|
      if @hour.update_attributes(params[:hour])
        format.html { redirect_to @hour, notice: 'Hour was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @hour.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hours/1
  # DELETE /hours/1.json
  def destroy
    @hour = Hour.find(params[:id])
    @hour.destroy

    respond_to do |format|
      format.html { redirect_to hours_url }
      format.json { head :no_content }
    end
  end
 
  def edit_individual
   @hours = Hour.find(params[:hour_ids])
  end

  def update_individual
   @hours = Hour.update(params[:hours].keys, params[:hours].values).reject { |p| p.errors.empty? }
  
  if @products.empty?
    redirect_to hours_url, notice: 'Productos actualizados'
   else
    render action: 'edit_individual'
   end
  end

end
