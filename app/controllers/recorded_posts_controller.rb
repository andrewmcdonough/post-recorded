class RecordedPostsController < ApplicationController

  def index
    @recorded_posts = RecordedPost.all
  end

  def create
    @recorded_post = RecordedPost.new(content: params.to_s,
                                      ip_address: request.remote_ip)
    if @recorded_post.save
      render text: "success"
    else
      render text: "fail"
    end
  end

end
