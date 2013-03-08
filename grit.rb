require 'grit'

location = Dir.pwd
repo = Grit::Repo.new(location)
branch_name = repo.branches.first.name
puts "Branch Name : #{branch_name}"

# files = Dir.entries(location)
# files.delete(".")
# files.delete("..")

# repo.add(files)
# repo.commit_index("Adding .rb fil through the command line of Grit...another attempt")

puts "Repository Status"
system("git status")

puts "Adding Files to Repository"
system("git add .")

puts "Pushing to the remote origin"
system("git push origin #{branch_name}")

