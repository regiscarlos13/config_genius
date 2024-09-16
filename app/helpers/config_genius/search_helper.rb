# frozen_string_literal: true

module ConfigGenius
  module SearchHelper
    def search(columns, visible_search: true)
      tag.div(class: 'd-flex justify-content-between mb-2 align-items-center') do
        concat(tag.div do
          select_item
        end)
        if visible_search
          concat(tag.div do
            search_fields(columns)
          end)
        end
      end
    end

    def select_item
      tag.div(class: 'input-group align-items-center') do
        concat(tag.label('Mostrar'))
        concat(select_tag('item',
                          options_for_select([15, 25, 50, 100]),
                          { class: 'form-select ms-2 me-2',
                            onchange: 'this.form.requestSubmit();',
                            form: :search_form }))
        concat(tag.label('por página'))
      end
    end

    private

    def search_fields(columns)
      filtered_columns = filter_columns(@q.klass.columns)

      searchable_columns = columns.reject { |str| str =~ /^[A-Z]/ } - filtered_columns

      generate_search_form(searchable_columns)
    end

    def filter_columns(columns)
      columns.select { |column| %i[boolean date integer].include?(column.type) }.map(&:name)
    end

    def generate_search_form(columns)
      search_form_for @q, data: { turbo_frame: :results, turbo_action: 'search' }, id: :search_form do |form|
        tag.div(class: 'input-group align-items-center') do
          concat(form.label(:pesquisar, class: 'me-3'))
          concat(
            form.search_field("#{columns.join('_or_')}_cont".to_sym,
                              class: 'form-control', placeholder: 'pesquisar', autocomplete: 'off', autofocus: true,
                              oninput: 'this.form.requestSubmit()')
          )
        end
      end
    end
  end
end
