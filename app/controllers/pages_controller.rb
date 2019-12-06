class PagesController < ApplicationController
  def show
    @page = Page.find(params[:id])
  end

  def permalink

    @page = Page.find_by(permalink: params[:permalink])

        if @page.nil?
        render :sorry
        else
        render :show
        end
  end
end
