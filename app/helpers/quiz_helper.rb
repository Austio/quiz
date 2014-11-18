module QuizHelper

  def quiz_link_path(action, id)
    case action.to_s.downcase
      when 'edit'
        link_to('Back to quiz', "/quizzes/#{id}")
      when 'show'
        link_to('Edit quiz', "/quizzes/#{id}/edit")
    end
  end
end