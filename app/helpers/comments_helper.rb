module CommentsHelper

	def nested_comments(comments)
	  comments.map do |comment, sub_comments|
	    render(comment) + render(partial: 'comments/reply', locals: { comment: comment }) + content_tag(:div, nested_comments(sub_comments), :class => "nested_comments") 
	  end.join.html_safe
	end

end
