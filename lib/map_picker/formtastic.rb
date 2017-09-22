module MapPicker
  class FormtasticMapBuilder < Formtastic::FormBuilder

    def map_picker(options = {})
      options.update :object => @object_name
      render_map_picker(objectify_options(options))
    end
  end
end
