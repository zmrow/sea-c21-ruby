RSpec.describe 'Class 5 Exercise 2' do
  let(:exercise2) do
    load File.expand_path('../../../lib/class5/exercise2.rb', __FILE__)
  end

  it "displays the absolute path for anyone's `lib/class5/database.yml` file" do
    message = <<END
#{File.absolute_path('../../../lib/class5/database.yml', __FILE__)}
END

    expect { exercise2 }.to output(message).to_stdout
  end
end
