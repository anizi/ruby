class Agnieszka1sController < ApplicationController
  # GET /agnieszka1s
  # GET /agnieszka1s.json
  def index
    @agnieszka1s = Agnieszka1.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @agnieszka1s }
    end
  end

  # GET /agnieszka1s/1
  # GET /agnieszka1s/1.json
  def show
    @agnieszka1 = Agnieszka1.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @agnieszka1 }
    end
  end

  # GET /agnieszka1s/new
  # GET /agnieszka1s/new.json
  def new
    @agnieszka1 = Agnieszka1.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @agnieszka1 }
    end
  end

  # GET /agnieszka1s/1/edit
  def edit
    @agnieszka1 = Agnieszka1.find(params[:id])
  end

  # POST /agnieszka1s
  # POST /agnieszka1s.json
  def create
    @agnieszka1 = Agnieszka1.new(params[:agnieszka1])

    respond_to do |format|
      if @agnieszka1.save
        format.html { redirect_to @agnieszka1, notice: 'Agnieszka1 was successfully created.' }
        format.json { render json: @agnieszka1, status: :created, location: @agnieszka1 }
      else
        format.html { render action: "new" }
        format.json { render json: @agnieszka1.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /agnieszka1s/1
  # PUT /agnieszka1s/1.json
  def update
    @agnieszka1 = Agnieszka1.find(params[:id])

    respond_to do |format|
      if @agnieszka1.update_attributes(params[:agnieszka1])
        format.html { redirect_to @agnieszka1, notice: 'Agnieszka1 was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @agnieszka1.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /agnieszka1s/1
  # DELETE /agnieszka1s/1.json
  def destroy
    @agnieszka1 = Agnieszka1.find(params[:id])
    @agnieszka1.destroy

    respond_to do |format|
      format.html { redirect_to agnieszka1s_url }
      format.json { head :no_content }
    end
  end
end
