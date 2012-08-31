module OpenAir
  class Error < RuntimeError
    attr_accessor :response

    def initialize(status, response)
      super(status)
      @response = response
    end
  end
end
