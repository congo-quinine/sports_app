class ApplicationController < ActionController::Base

   include SessionsHelper
   include YoutubeHelper
   include NewsfeedHelper
end
