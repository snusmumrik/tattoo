# -*- coding: utf-8 -*-
class ContentsController < ApplicationController
  def index
  end

  def show
    if params[:id] && File.exist?(path = "#{Rails.root.to_s}/app/views/contents/#{params[:id]}.html.haml")
      render :file => path, :layout => true
    else
      render :text => "Page does not exists.", :status => 404
    end
  end
end
