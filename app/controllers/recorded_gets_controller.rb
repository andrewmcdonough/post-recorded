class RecordedGetsController < ApplicationController


  def create
    @recorded_get = RecordedGet.new(content: params.to_s,
                                      ip_address: request.remote_ip)
    if @recorded_get.save
      if params[:pixel]
        send_data(Base64.decode64("R0lGODlhAQABAPAAAAAAAAAAACH5BAEAAAAALAAAAAABAAEAAAICRAEAOw=="), :type => "image/gif", :disposition => "inline")
      else
        render text: "record"
      end
    else
      render text: "fail"
    end
  end

  def index
    @recorded_gets = RecordedGet.all
  end

end
