require 'rails_helper'

RSpec.describe WinesController, type: :controller do
  before do
    @user = User.create(email: 'user@mail.com', password: '123456')
    @wine = Wine.create(name: "Gran reserva")
  end

  describe "GET index" do
    it "assigns all wines as @wines" do
      sign_in @user
			get :index
			expect(assigns(:wines)).to eq([@wine])
		end

    it "renders index template" do
      sign_in @user
			get :index
			expect(response).to render_template("index")
		end
  end

  describe "GET show" do
    it "renders show template" do
      sign_in @user
			get :show, params: { id: @wine.id }
			expect(response).to render_template("show")
		end
  end
end
