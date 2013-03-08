require 'grit'

location = Dir.pwd
repo = Grit::Repo.new(location)
branch_name = repo.branches.first.name
files = Dir.entries(location)
files.delete(".")
files.delete("..")

repo.add(files)
repo.commit_index("Adding .rb fil through the command line of Grit...another attempt")

puts "Repository Status"
system("git status")

puts "Pushing to the remote origin"
system("git push origin #{repo.branches.first.name}")

