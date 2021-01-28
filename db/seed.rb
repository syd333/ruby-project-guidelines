1 = User.create(name: "syd")
2 = User.create(name: "cyn")

task1 = Task.create(title: "fix car", description: "drop off car + ask what that random noise is?", date: DateTime.now, user_id: 1, list_id: 1)

list1 = List.create(category: "Home", user_id: 1)

#list categories:::
#school, work, home 