# frozen_string_literal: true

module PagyConcern
  extend ActiveSupport::Concern

  included do
    include Pagy::Backend
  end

  def ransack(model)
    @q = model.ransack(params[:q])
    @pagy, @records = pagy(@q.result, items: per_page)
    @columns = model.ransackable_attributes
  end

  private

  def per_page
    params[:item] || 15
  end
end
