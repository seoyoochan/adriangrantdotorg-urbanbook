ActiveAdmin.register Person do


  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #
  # permit_params do
  #   permitted = [:permitted, :attributes]
  #   permitted << :other if resource.something?
  #   permitted
  # end

controller do
  def show
      @person = Person.find(params[:id])
      @versions = @person.versions 
      @person = @person.versions[params[:version].to_i].reify if params[:version]
      show! #it seems to need this
  end
end
  sidebar :versionate, :partial => "layouts/version", :only => :show

  member_action :history do
    @person = Person.find(params[:id])
    @versions = @person.versions
    render "layouts/history"
  end

end
