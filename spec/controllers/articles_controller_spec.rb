# -*- coding: utf-8 -*-
require 'rails_helper'

RSpec.describe ArticlesController, type: :controller do
  before do
    @article = create(:article)
  end

  it "index" do
    get :index
    assert_response :success
  end

  it "edit" do
    get :edit, :id => @article.to_param
    assert_response :success
  end

  it "destroy" do
    delete :destroy, :id => @article.to_param
    assert_response :redirect
  end
end
