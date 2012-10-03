# encoding: utf-8
class RequestsController < ApplicationController
  def new
    @request = Request.new
  end

  def create
    @request = Request.new params[:request]

    if @request.valid?
      string_params = JSON.load(@request.string_params) || {}
      options = { query: string_params, options: { headers => { 'ContentType' => 'application/json' } } }
      httparty_result = HTTParty.send(@request.http_verb.to_sym, @request.url, options)
      @result = CodeRay.scan(httparty_result, :javascript).span
      flash.now[:notice] = 'Retorno OK.'
    else
      flash.now[:error] = 'Você precisa informar uma URL...'
      render :new
    end
  end
end
