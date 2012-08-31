module OpenAir
  class Response
    attr_accessor :response_for_type

    def initialize(response, type)
      raise Error.new("OpenAir return HTTP code #{response.status}", response) if response.status.to_i >= 300

      @response = XmlSimple.xml_in(response.body, force_array: false, attr_prefix: true)
      @type = type.to_s.capitalize
      @response_for_type = @response[@type]

      raise Error.new("OpenAir return a non zero error code", response) if request_success?
    end

    def as_json()
      @response_for_type
    end

    private

    def request_success?
      @response['Auth']['@status'].to_i != 0 || @response_for_type['@status'].to_i != 0
    end
  end
end
