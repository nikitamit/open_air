module OpenAir
  class Request
    def request_xml(template_path, params)
      view = ActionView::Base.new(ActionController::Base.view_paths, {})

      #class << view
      #  include ApplicationHelper
      #end

      view.render(file: "open_air/#{template_path}", formats: :xml, locals: params, layout: 'open_air/layout')
    end

    def request(type, context={})
      response = http.request(post(request_xml(type, context)))
      Response.new(response, type)
    end

    private

    def post(request_xml)
      Net::HTTP::Post.new(OPEN_AIR['path']).tap do |post|
        post.body = request_xml
      end
    end

    def http
      Net::HTTP.new(OPEN_AIR['host']).tap do |http|
        http.use_ssl = true
        http.verify_mode = OpenSSL::SSL::VERIFY_NONE
      end
    end
  end
end
