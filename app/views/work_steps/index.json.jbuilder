json.array!(@work_steps) do |work_step|
  json.extract! work_step, :id, :DisplayName, :Description, :AllowQuantityInput
  json.url work_step_url(work_step, format: :json)
end
