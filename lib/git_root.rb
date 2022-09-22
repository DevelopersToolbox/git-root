# frozen_string_literal: true

require 'pathname'

require_relative "git_root/errors"
require_relative "git_root/version"

class GitRoot
    #
    # Stuff
    #

    class << self
        def get_git_info(base_path = Dir.getwd)
            git_path_parts = Pathname(base_path).each_filename.to_a

            while git_path_parts.count > 0
                git_root = '/' + git_path_parts.join('/')
                git_path = git_root + '/.git'

                return git_root if File.directory?(git_path)

                git_path_parts.pop
            end
            raise InvalidRepoError.new
        end
    end
end
