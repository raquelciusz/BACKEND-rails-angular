require "test_helper"

class FreelanceDocumentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @freelance_document = freelance_documents(:one)
  end

  test "should get index" do
    get freelance_documents_url, as: :json
    assert_response :success
  end

  test "should create freelance_document" do
    assert_difference("FreelanceDocument.count") do
      post freelance_documents_url, params: { freelance_document: { description: @freelance_document.description, file_url: @freelance_document.file_url, image_url: @freelance_document.image_url, title: @freelance_document.title } }, as: :json
    end

    assert_response :created
  end

  test "should show freelance_document" do
    get freelance_document_url(@freelance_document), as: :json
    assert_response :success
  end

  test "should update freelance_document" do
    patch freelance_document_url(@freelance_document), params: { freelance_document: { description: @freelance_document.description, file_url: @freelance_document.file_url, image_url: @freelance_document.image_url, title: @freelance_document.title } }, as: :json
    assert_response :success
  end

  test "should destroy freelance_document" do
    assert_difference("FreelanceDocument.count", -1) do
      delete freelance_document_url(@freelance_document), as: :json
    end

    assert_response :no_content
  end
end
