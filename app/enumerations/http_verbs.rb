class HTTPVerbs < EnumerateIt::Base
  associate_values(
    :get,
    :post,
    :put,
    :delete
  )
end
