require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to test the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator. If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails. There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.

RSpec.describe "/networks", type: :request do
  
  # This should return the minimal set of attributes required to create a valid
  # Network. As you add validations to Network, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  describe "GET /index" do
    it "renders a successful response" do
      Network.create! valid_attributes
      get networks_url
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      network = Network.create! valid_attributes
      get network_url(network)
      expect(response).to be_successful
    end
  end

  describe "GET /new" do
    it "renders a successful response" do
      get new_network_url
      expect(response).to be_successful
    end
  end

  describe "GET /edit" do
    it "renders a successful response" do
      network = Network.create! valid_attributes
      get edit_network_url(network)
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new Network" do
        expect {
          post networks_url, params: { network: valid_attributes }
        }.to change(Network, :count).by(1)
      end

      it "redirects to the created network" do
        post networks_url, params: { network: valid_attributes }
        expect(response).to redirect_to(network_url(Network.last))
      end
    end

    context "with invalid parameters" do
      it "does not create a new Network" do
        expect {
          post networks_url, params: { network: invalid_attributes }
        }.to change(Network, :count).by(0)
      end

      it "renders a successful response (i.e. to display the 'new' template)" do
        post networks_url, params: { network: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "PATCH /update" do
    context "with valid parameters" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested network" do
        network = Network.create! valid_attributes
        patch network_url(network), params: { network: new_attributes }
        network.reload
        skip("Add assertions for updated state")
      end

      it "redirects to the network" do
        network = Network.create! valid_attributes
        patch network_url(network), params: { network: new_attributes }
        network.reload
        expect(response).to redirect_to(network_url(network))
      end
    end

    context "with invalid parameters" do
      it "renders a successful response (i.e. to display the 'edit' template)" do
        network = Network.create! valid_attributes
        patch network_url(network), params: { network: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested network" do
      network = Network.create! valid_attributes
      expect {
        delete network_url(network)
      }.to change(Network, :count).by(-1)
    end

    it "redirects to the networks list" do
      network = Network.create! valid_attributes
      delete network_url(network)
      expect(response).to redirect_to(networks_url)
    end
  end
end