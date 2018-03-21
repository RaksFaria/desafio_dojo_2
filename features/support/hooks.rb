
# AfterStep ('@cadastrar') do |scenario|
# if scenario.passed?
# page.driver.browser.save_screenshot("#{scenario.__id__}.png")
# end
# Capybara.current_session.driver.browser.manage.delete_all_cookies
# Capybara.current_session.driver.quit
# end 
 

# AfterStep do

# #for contador in 1..4
#     puts save_screenshot("Passou.png")
# #end

# end


Before do
   Capybara.reset_sessions!
end

After do |scenario|
   Dir.mkdir('report') unless Dir.exist?('report')

   sufix = ('error' if scenario.failed?) || 'sucess'
   name = scenario.name.tr(' ','_').downcase

   page.save_screenshot("report/#{sufix}-#{name}.png")
   embed("report/#{sufix}-#{name}.png", 'image/png', 'Screenshot')

   if page.driver.browser.window_handles.count > 1
   page.driver.browser.close
   last_handle = page.driver.browser.window_handles.last
   page.driver.browser.switch_to.window(last_handle)
 end

end
