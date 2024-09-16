# frozen_string_literal: true

module ConfigGenius
  module PaginationHelper
    def pagination
      tag.div(class: 'd-flex justify-content-between') do
        concat(pagy_info(@pagy).html_safe)
        concat(pagy_bootstrap_nav(@pagy).html_safe)
      end
    end
  end
end
