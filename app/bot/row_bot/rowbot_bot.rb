class Rowbot
  include Hg::Messenger::Bot

  VERSION='0.0.1-pre'

  # BUG: greeting_text and image_url_base have to appear first, or load errors will be thrown
  greeting_text 'Welcome'

  image_url_base ENV['HOSTNAME']

  persistent_menu do
    call_to_action 'Main menu', payload: {
      action: Actions::MAIN_MENU
    }
  end

  get_started action: Actions::GET_STARTED

  class << self


  end
end
