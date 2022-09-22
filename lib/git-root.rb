#
# stuff to go here
#

require 'pathname'

require_relative 'git-root/errors'
require_relative 'git-root/version'

#
# and here
#
class GitRoot
    #
    # Stuff
    #

    class << self
        def path(base_path = Dir.getwd)
            git_path_parts = Pathname(base_path).each_filename.to_a

            while git_path_parts.count.positive?
                git_root = "/#{git_path_parts.join('/')}"
                git_path = "#{git_root}/.git"

                return git_root if File.directory?(git_path)

                git_path_parts.pop
            end
            raise InvalidRepoError.new
        end
    end
end
