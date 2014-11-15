require 'rails_helper'

  RSpec.describe TicketsController, :type => :controller do

    describe "#new" do

      it "assigns a vaiable @tickets" do
        get :new
        expect(assigns(:ticket)).to be_an_instance_of Ticket
      end
    end

    describe "#destroy" do
      let!(:ticket) { create(:ticket) }
      #before { login(user) }

      it "deletes the ticket" do
        expect{delete :destroy, id: ticket.id}.to change{Ticket.count}.by(-1)
      end

    end

  end







  # describe "#destroy" do
  #  # it "destroys a @ticket" do
  #  #   ticket = Ticket.create! valid_attributes
  #  #    expect {
  #  #      delete :destroy, {:id => ticket.to_param}, valid_session
  #  #    }.to change(Ticket, :count).by(-1)
  #  # end

  #     it "deletes the ticket"
  #       do expect{delete :destroy, id: @ticket}.to change(Ticket,:count).by(-1)
  #       end
  # end




  # describe "#create" do

  #   context "with valid use params" do
  #     def valid_request
  #       post :create, {user: {first_name: "Tam",
  #                             last_name: "Kbeili",
  #                             email: "tam@codecore.ca",
  #                             password: "abcd1234",
  #                             password_confirmation: "abcd1234"}}
  #     end
  #     it "saves a user record in the database" do
  #       expect { valid_request }.to change { User.count }.by(1)
  #     end

  #     it "redirects to root" do
  #       valid_request
  #       expect(response).to redirect_to(root_path)
  #     end

  #     it "sets a flash message" do
  #       valid_request
  #       expect(flash[:notice]).to be
  #     end
  #   end

  #   context "with invalid user params" do
  #     def invalid_request
  #       post :create, {user: {first_name: "Tam"}}
  #     end


  #     it "doesn't save an invalid user to the database" do
  #       expect { invalid_request }.not_to change { User.count }
  #     end

  #     it "renders new template" do
  #       invalid_request
  #       expect(response).to render_template(:new)
  #     end

  #     it "sets a flash message" do
  #       invalid_request
  #       expect(flash[:alert]).to be
  #     end

  #   end

  # end


