require 'rails_helper'

describe Post do
  describe '.create' do
    it "creates a post from its hash argument" do
      post_params = { title: 'My post title', body: 'My post body' }
      new_post = Post.create(post_params)

      expect( new_post.id ).not_to be_nil # Added to database
      expect( new_post.title ).to eq( post_params[:title] )
      expect( new_post.body ).to eq( post_params[:body] )
    end
  end
end