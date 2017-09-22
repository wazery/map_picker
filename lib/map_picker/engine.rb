# encoding: utf-8
require 'rails'
require 'map_picker'

module MapPicker
  class Engine < ::Rails::Engine
    config.after_initialize do
      ActionView::Base.send(:include, MapPicker::ViewHelper)
      ActionView::Helpers::FormBuilder.send(:include, MapPicker::FormBuilder)

      if Object.const_defined?("Formtastic")
        if Formtastic.const_defined?("Helpers")
          Formtastic::Helpers::FormHelper.builder = MapPicker::FormtasticMapBuilder
        else
          Formtastic::SemanticFormHelper.builder = MapPicker::FormtasticMapBuilder
        end
      end
    end
  end
end


