require 'test_helper'

class WatchServicesControllerTest < ActionController::TestCase
  setup do
    @watch_service = watch_services(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:watch_services)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create watch_service" do
    assert_difference('WatchService.count') do
      post :create, watch_service: { brand: @watch_service.brand, email: @watch_service.email, model: @watch_service.model, name: @watch_service.name, phone: @watch_service.phone, polishing: @watch_service.polishing, reference: @watch_service.reference, repair: @watch_service.repair, revision: @watch_service.revision, servicing: @watch_service.servicing, wristband: @watch_service.wristband }
    end

    assert_redirected_to watch_service_path(assigns(:watch_service))
  end

  test "should show watch_service" do
    get :show, id: @watch_service
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @watch_service
    assert_response :success
  end

  test "should update watch_service" do
    patch :update, id: @watch_service, watch_service: { brand: @watch_service.brand, email: @watch_service.email, model: @watch_service.model, name: @watch_service.name, phone: @watch_service.phone, polishing: @watch_service.polishing, reference: @watch_service.reference, repair: @watch_service.repair, revision: @watch_service.revision, servicing: @watch_service.servicing, wristband: @watch_service.wristband }
    assert_redirected_to watch_service_path(assigns(:watch_service))
  end

  test "should destroy watch_service" do
    assert_difference('WatchService.count', -1) do
      delete :destroy, id: @watch_service
    end

    assert_redirected_to watch_services_path
  end
end
