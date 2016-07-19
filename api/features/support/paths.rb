@base_url = 'http://localhost/html/web-tournament/#!/'

def path_to(page_name)
  'http://localhost/html/web-tournament/#!/' + page_name
end

After do |scenario|
  if scenario.failed?
    save_screenshot('/home/vinicius/tmp/cucumber.png')
  end
end

After { Capybara.reset_sessions! }