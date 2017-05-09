require 'test_helper'

class PostTest < ActiveSupport::TestCase
  test 'Post#recent returns posts ordered in descending order' do
    posts = Post.recent

    previous_id = posts[0].id
    posts[1..-1].each do |post|
      assert post.id < previous_id, "Post with id #{post} should not come before post with id #{previous_id}"
      previous_id = post.id
    end
  end

  test 'Post#recent returns five posts' do
    posts = Post.recent
    assert_equal 5, posts.count, 'Post#recent should return five posts'
  end
end
