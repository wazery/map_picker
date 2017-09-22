require 'map_picker/config'
require 'map_picker/engine' if defined?(Rails)

module MapPicker
  autoload :ViewHelper, 'map_picker/view_helper'
  autoload :FormBuilder, 'map_picker/form_builder'
  autoload :FormtasticMapBuilder, 'map_picker/formtastic'
end