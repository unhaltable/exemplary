module ApplicationHelper
	def MDParse(md)
		renderer = Redcarpet::Render::HTML.new(render_options = {})
		markdown = Redcarpet::Markdown.new(renderer, extensions = {})
		return markdown.render(md)
	end
end
