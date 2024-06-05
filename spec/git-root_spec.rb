RSpec.describe GitRoot do
    it 'has a version number' do
        expect(GitRoot::VERSION).not_to be nil
    end

    it 'shows the root directory correctly' do
        root_path = GitRoot.path
        relative_path = File.expand_path('.')
        expect(root_path).to eq(relative_path)
    end
end
