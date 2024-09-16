# frozen_string_literal: true

require 'pagy'
require 'pagy/extras/bootstrap'
require 'pagy/extras/overflow'
require 'pagy/extras/countless'

Pagy::I18n.load(locale: 'pt-BR')

Pagy::DEFAULT[:items] = 10
