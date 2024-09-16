# frozen_string_literal: true

Rails.application.routes.draw do
  mount ConfigGenius::Engine => '/config_genius'
end
