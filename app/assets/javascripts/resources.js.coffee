###########Resources


# app.factory "Goalsets", ["$resource", ($resource) ->
#   $resource("/goalsets.json")
# ]

# app.factory "Goalset", ["$resource", ($resource) ->
#   $resource("/goalsets/:id.json", {id: "@id"}, {update: {method: "PUT"}})
# ]

# app.factory "Task", ["$resource", ($resource) ->
# 	$resource("/goalsets/:goalset_id/tasks/:id", {goalset_id: "@goalset_id", id: "@id"}, {update: {method: "PUT"}})
# ]
