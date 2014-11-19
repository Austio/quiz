module QuizHelper

  def quiz_link_path(action, id)
    case action.to_s.downcase
      when 'edit'
        link_to('Back to quiz', "/quizzes/#{id}")
      when 'show'
        link_to('Edit quiz', "/quizzes/#{id}/edit")
    end
  end

  def link_to_add_answer_field(name, f, association)
    new_object = f.object.send(association).klass.new
    id = new_object.object_id
    fields = f.fields_for(association, new_object, child_index: id) do |builder|
      render(association.to_s.singularize + "_fields", f: builder)
    end
    link_to(name, '#', class: "add_#{association.to_s.singularize}", data: {id: id, fields: fields.gsub("\n", "")})
  end

end