require 'test_helper'

class ConeGemTest < ActionDispatch::IntegrationTest
  def get_cone_url(name, params = false)
    get_js("cone.#{name}Url(#{params ? params.to_json : ''})")
  end

  test 'url without params' do
    assert_equal '/', get_cone_url('root')
    assert_equal '/users', get_cone_url('users')
  end

  test 'url with path params' do
    assert_equal '/users/12/posts', get_cone_url('userPosts', user_id: '12')
    assert_equal '/users/12/posts/34.json', get_cone_url('userPost', user_id: '12', id: '34', format: 'json')
  end

  test 'url with get params' do
    assert_equal '/?foo=bar%20baz', get_cone_url('root', foo: 'bar baz')
    assert_equal '/users/12/posts?foo=bar%20baz', get_cone_url('userPosts', user_id: '12', foo: 'bar baz')
  end

end