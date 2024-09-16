# frozen_string_literal: true

module ConfigGenius
  module MessageHelper # :nodoc:
    def message(name)
      case name
      when 'notice', 'success'
        'success'
      when 'alert'
        'warning'
      else
        'error'
      end
    end

    def show_message(model)
      return unless model.errors.any?

      errors = model.errors
      error_count = errors.count
      error_messages = errors.full_messages.join("\n")

      content_tag(:div, nil,
                  data: {
                    controller: 'message',
                    message_name_value: message('error'),
                    message_msg_value: "#{pluralize(error_count,
                                                    'erro')} encontrado(s), por favor verifique:\n \n#{error_messages}!"
                  })
    end
  end
end
