json.array!(@projects) do |project|
  json.extract! project, :id, :DisplayName, :Description, :DueDate
  json.url project_url(project, format: :json)
end
