module ApplicationHelper
	def link_to_destroy_fields(name, f, options = {})
		f.hidden_field(:_destroy, :class => "destroy_field") + link_to_function(name, "destroy_fields(this)", options)
	end

	def link_to_add_fields(name, f, association, options = {}, builder_options = { :builder => ActionView::Helpers::FormBuilder })
		new_object = f.object.class.reflect_on_association(association).klass.new
		fields = f.fields_for(association, new_object, builder_options.merge( { :child_index => "new_#{association}" })) do |builder|
			render(association.to_s.singularize + "_fields", :f => builder)
		end
		link_to_function(name, "add_fields(this, \"#{association}\", \"#{escape_javascript(fields)}\")", options)
	end
end
