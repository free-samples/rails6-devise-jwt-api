class CompaniesController < ApplicationController
  before_action :authenticate_user!
  def index
    @companies = Company.active
    render :json => @companies
  end
  def show
    @company= Company.find(params['id'])
    render :json => @company
  end
  def update
    @company= Company.find(params['id'])
    @company.update(company_params)
    render :json => @company
  end
  def company_params
    params.require(:company)
    .permit(  
              :status,
              :name,
              :logo,
              :layout_color_dark,
              :layout_color_light,
              :address,
              :rfc,
              :phone,
              :url,
              :email,
              :banking_data,
              :privacy_notification,
              )
  end  
end
