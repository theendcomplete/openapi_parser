# TODO: support extended property

module OpenAPIParser::Schemas
  class RequestBody < Base
    openapi_attr_values :description, :required

    # @!attribute [r] content
    #   @return [Hash{String => MediaType}, nil]
    openapi_attr_hash_object :content, MediaType, reference: false
  end
end
