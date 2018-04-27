json.extract! task, :id, :name_task, :effort_driven, :estimate_effort, :team_id, :percentage_task, :priority, :created_at, :updated_at
json.url task_url(task, format: :json)
