# TODO: externalDocs
# TODO: callbacks
# TODO: security
# TODO: servers

module OpenAPIParser::Schemas
  class Operation < Base
    openapi_attr_values :tags, :summary, :description, :deprecated

    openapi_attr_value :operation_id, schema_key: :operationId

    openapi_attr_list_object :parameters, Parameter, reference: true

    openapi_attr_object :request_body, RequestBody, reference: true, schema_key: :requestBody

    openapi_attr_object :responses, Responses, reference: false
  end
end
