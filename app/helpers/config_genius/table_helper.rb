# frozen_string_literal: true

module ConfigGenius
  module TableHelper
    def table_for(table:, columns:, pagination:, button: true)
      turbo_frame_tag :results, data: { turbo_action: 'search' } do
        concat(tag.div(class: 'table-responsive') do
          concat(tag.table(class: 'table  table-striped table-hover table-bordered table-sm') do
            concat(thead(columns, button))
            concat(tbody(table))
          end)
        end)
        concat(pagination)
      end
    end

    def thead(columns, button)
      tag.thead do
        tag.tr(class: 'text-center ') do
          columns.map do |column|
            concat(tag.th(sort_link(@q, column,
                                    class: 'link-dark link-offset-2 link-underline link-underline-opacity-0 ')))
          end
          concat(tag.th('')) if button
        end
      end
    end

    def tbody(table)
      tag.tbody id: "#{table.table.name}_table" do
        render partial: table.name.underscore, collection: table, cached: true
      end
    end
  end
end
