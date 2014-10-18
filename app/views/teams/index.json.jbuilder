json.array!(@teams) do |team|
  json.extract! team, :id, :name, :members, :leader, :contact_email
  json.url team_url(team, format: :json)
end
