# frozen_string_literal: true

module ConfigGenius
  module ApplicationHelper
    include BtnHelper
    include TableHelper
    include MessageHelper
    include SearchHelper
    include PaginationHelper
    include Pagy::Frontend
  end
end
