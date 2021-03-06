require 'redmine'

Redmine::Plugin.register :redmine_start_page do
  name 'Set a new start page after login in redmine'
  author 'Frank Kanzler (intersolve)'
  description 'This plugin redirects the user, just after he has logged in, to the URL defined in settings. When auto-logged-out the user will be redirected to the page he last visited.'
  version '0.1.0'
  url 'https://github.com/chanzler/redmine_start_page'
  author_url 'https://github.com/chanzler/'

  settings(:default => { 'redirect' => '' }, :partial => 'settings/redirect_to_after_login_settings' )
end

module Hooks
  class Hooks < Redmine::Hook::ViewListener
     def controller_account_success_authentication_after(context={})
         startPage_url = Setting[:plugin_redmine_start_page][:startPage]
         if context[:request].params[:back_url]
           if context[:request].params[:back_url].end_with?("#{Setting.host_name}/")
             context[:request].params[:back_url] = startPage_url
           end
         end
         return ''
     end
  end
end
