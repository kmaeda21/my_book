require 'test_helper'

class BooksControllerTest < ActionController::TestCase
  setup do
    @book = books(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:books)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create book" do
    assert_difference('Book.count') do
      post :create, book: { ISBN_code: @book.ISBN_code, author: @book.author, availability: @book.availability, date_of_publication: @book.date_of_publication, image: @book.image, name: @book.name, price: @book.price, publisher: @book.publisher }
    end

    assert_redirected_to book_path(assigns(:book))
  end

  test "should show book" do
    get :show, id: @book
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @book
    assert_response :success
  end

  test "should update book" do
    patch :update, id: @book, book: { ISBN_code: @book.ISBN_code, author: @book.author, availability: @book.availability, date_of_publication: @book.date_of_publication, image: @book.image, name: @book.name, price: @book.price, publisher: @book.publisher }
    assert_redirected_to book_path(assigns(:book))
  end

  test "should destroy book" do
    assert_difference('Book.count', -1) do
      delete :destroy, id: @book
    end

    assert_redirected_to books_path
  end
end
