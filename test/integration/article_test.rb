require 'test_helper'

sudo_hoot = articles(:sudo_hoot)
get '/articles/new'

assert_response :success
post_via_redirect "/articles/new", title:
recipes(:sudo_hoot).title