desc "Create the test rails app"

task :generate do
  unless File.exists?('.internal_test_app/Rakefile')
    puts "Generating rails app"
    `bundle _1.17.3_ exec rails new .internal_test_app`
    Bundler.with_clean_env do
      within_test_app do
        puts "Bundle install"
        `bundle _1.17.3_ install`
        puts "Bundle  install done"
      end
    end
  end
  puts "Done generating test app"
end

def within_test_app
  FileUtils.cd('.internal_test_app')
  yield
  FileUtils.cd('..')
end
