require "sqlite3"
DB = SQLite3::Database.new("tasks.db")
DB.results_as_hash = true
require_relative "task"



#Trouver la task qui a l'id 1

# p first_task
#Trouver toutes mes tasks
# p Task.all

# #Créer une task
# new_task = Task.new({})
# new_task.save

# #Update une task
# new_task.done = 1
# new_task.save

#Delete une task
# first_task = Task.find(1)

# p first_task

# first_task.destroy

# test_task = Task.find(1)

# p test_task


marseille = Task.find(3)

marseille.description = "le vieux port"

marseille.save


p marseille




# laure = Human.new(genre: "fille")
# louis = Human.new(genre: "garcon")

# String.new("to")
# louis.become_adult 
# laure.become_adult
