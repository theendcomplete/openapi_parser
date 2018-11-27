# binding request data and operation object

class OpenAPIParser::RequestOperation
  attr_reader :endpoint, :path_params

  def initialize(endpoint, path_params)
    @endpoint = endpoint
    @path_params = path_params
  end

  class << self
    # @param [OpenAPIParser::PathItemFinder] path_item_finder
    def create(http_method, request_path, path_item_finder)
      endpoint, path_params = path_item_finder.operation_object(http_method, request_path)

      return nil unless endpoint

      self.new(endpoint, path_params)
    end
  end
end
