class AddressbooksController < ApplicationController
  # GET /addressbooks
  # GET /addressbooks.xml
  def index
    @addressbooks = Addressbook.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @addressbooks }
    end
  end

  # GET /addressbooks/1
  # GET /addressbooks/1.xml
  def show
    @addressbook = Addressbook.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @addressbook }
    end
  end

  # GET /addressbooks/new
  # GET /addressbooks/new.xml
  def new
    @addressbook = Addressbook.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @addressbook }
    end
  end

  # GET /addressbooks/1/edit
  def edit
    @addressbook = Addressbook.find(params[:id])
  end

  # POST /addressbooks
  # POST /addressbooks.xml
  def create
    @addressbook = Addressbook.new(params[:addressbook])

    respond_to do |format|
      if @addressbook.save
        flash[:notice] = 'Addressbook was successfully created.'
        format.html { redirect_to(@addressbook) }
        format.xml  { render :xml => @addressbook, :status => :created, :location => @addressbook }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @addressbook.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /addressbooks/1
  # PUT /addressbooks/1.xml
  def update
    @addressbook = Addressbook.find(params[:id])

    respond_to do |format|
      if @addressbook.update_attributes(params[:addressbook])
        flash[:notice] = 'Addressbook was successfully updated.'
        format.html { redirect_to(@addressbook) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @addressbook.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /addressbooks/1
  # DELETE /addressbooks/1.xml
  def destroy
    @addressbook = Addressbook.find(params[:id])
    @addressbook.destroy

    respond_to do |format|
      format.html { redirect_to(addressbooks_url) }
      format.xml  { head :ok }
    end
  end
end
