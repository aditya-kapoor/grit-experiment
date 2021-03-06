require 'grit'

location = Dir.pwd
repo = Grit::Repo.new(location)
branch_name = repo.branches.first.name
puts "Branch Name : #{branch_name}"

files = Dir.entries(location)
files.delete(".")
files.delete("..")

repo.add(files)
repo.commit_all("#{ARGV[0]}")

# puts "Repository Status"
# system("git status")

# puts "Adding Files to Repository"
# system("git add .")

puts "Pushing to the remote origin"
Dir.chdir(Dir.pwd) {
  system("git push origin #{branch_name}")
}
