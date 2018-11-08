class StaticPageController < ApplicationController
  before_action :set_crypto, only: [:show, :edit, :update]
  def home
  end
  def contact
  end
end
