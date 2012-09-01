class MicroprocessorsController < ApplicationController
  # GET /microprocessors
  # GET /microprocessors.json
  def index
    @microprocessors = Microprocessor.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @microprocessors }
    end
  end

  # GET /microprocessors/1
  # GET /microprocessors/1.json
  def show
    @microprocessor = Microprocessor.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @microprocessor }
    end
  end

  # GET /microprocessors/new
  # GET /microprocessors/new.json
  def new
    @microprocessor = Microprocessor.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @microprocessor }
    end
  end

  # GET /microprocessors/1/edit
  def edit
    @microprocessor = Microprocessor.find(params[:id])
  end

  # POST /microprocessors
  # POST /microprocessors.json
  def create
    @microprocessor = Microprocessor.new(params[:microprocessor])

    respond_to do |format|
      if @microprocessor.save
        format.html { redirect_to @microprocessor, notice: 'Microprocessor was successfully created.' }
        format.json { render json: @microprocessor, status: :created, location: @microprocessor }
      else
        format.html { render action: "new" }
        format.json { render json: @microprocessor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /microprocessors/1
  # PUT /microprocessors/1.json
  def update
    @microprocessor = Microprocessor.find(params[:id])

    respond_to do |format|
      if @microprocessor.update_attributes(params[:microprocessor])
        format.html { redirect_to @microprocessor, notice: 'Microprocessor was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @microprocessor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /microprocessors/1
  # DELETE /microprocessors/1.json
  def destroy
    @microprocessor = Microprocessor.find(params[:id])
    @microprocessor.destroy

    respond_to do |format|
      format.html { redirect_to microprocessors_url }
      format.json { head :no_content }
    end
  end
end
