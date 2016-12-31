require 'test_helper'

class ConeGemTest < ActionDispatch::IntegrationTest
  def get_cone_path(name, opt = {})
    # alias, params
    get_js("cone.#{name}Path(#{ opt[:params] ? opt[:params].to_json : '' })")
  end

  test 'path without params' do
    assert_equal '/', get_cone_path('root')
    assert_equal '/users', get_cone_path('users')
  end

  test 'path with path params' do
    assert_equal '/users/12/posts', get_cone_path('userPosts', params: {user_id: '12'})
    assert_equal '/users/12/posts/34.json', get_cone_path('userPost', params: {user_id: '12', id: '34', format: 'json'})
  end

  test 'path with get params' do
    assert_equal '/?foo=bar%20baz', get_cone_path('root', params: {foo: 'bar baz'})
    assert_equal '/users/12/posts?foo=bar%20baz', get_cone_path('userPosts', params: {user_id: '12', foo: 'bar baz'})
  end

  test 'path with anchor' do
    assert_equal '/?foo=bar#bar%20bar', get_cone_path('root', params: { foo: 'bar', anchor: 'bar bar' })
  end
end
