require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  setup do
    @page = pages(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pages)
  end

	def test_repos
		get :repos
		assert_response :success

		assert_select 'h3', 'Repositories'
		assert_select 'ul#repos_list'

	end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create page" do
    assert_difference('Page.count') do
      post :create, :page => @page.attributes
    end

    assert_redirected_to page_path(assigns(:page))
  end

  test "should show page" do
    get :show, :id => @page.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @page.to_param
    assert_response :success
  end

  test "should update page" do
    put :update, :id => @page.to_param, :page => @page.attributes
    assert_redirected_to page_path(assigns(:page))
  end

	def test_team
		get :team
		assert_response :success

		assert_select 'h4', 'Victor Pudeyev'
		assert_select 'h4', 'Gokul Krishna'
		assert_select 'h4', 'Zoran Stefanovski'
		assert_select 'h4', 'Hassan Tariq'
		assert_select 'h4', 'Kyrylo Vorotyntsev'
	end

  test "should destroy page" do
    assert_difference('Page.count', -1) do
      delete :destroy, :id => @page.to_param
    end

    assert_redirected_to pages_path
  end

	def test_main_menu
		get :home
		assert_response :success

		assert_select 'a#domains', 'Domains'
	end

	def test_portfolio
		get :portfolio
		assert_response :success

		assert_select 'h3', 'Domains'
		assert_select 'ul#domains_list' do
			assert_select 'li a', 'infiniteshelter.com'
		end

		assert_select 'ul#microsites_list' do
			assert_select 'li a', 'dailybadjokes.com'
			assert_select 'li a', 'bodyseeksoul.com'
			assert_select 'li', 'bestpartyphoto.com'
		end
	end

	def test_clients
		get :clients
		assert_response :success

		assert_select 'ul#client_list'
	end
end
