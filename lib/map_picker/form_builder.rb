module MapPicker
  module FormBuilder
    def self.included(base)
      base.send(:include, MapPicker::ViewHelper)
      base.send(:include, MapPicker::FormBuilder::ClassMethods)
    end

    module ClassMethods
      # Example:
      # <% form_for :shop, :url => shops_path do |form| %>
      #   ...
      #   <%= form.map_picker :gmap_conf => {:lat_column => 'latitude', :lng_column => 'longitude' }, :default_coordinates => some_default_coordinates  %>
      # <% end %>
      #
      def map_picker(options = {})
        options.update :object => @object_name
        render_map_picker(objectify_options(options))
      end


    end
  end
end
