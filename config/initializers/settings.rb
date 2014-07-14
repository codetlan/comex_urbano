##  THESE SETTING SHOULD NOT NEED TO BE SECURE.  IF YOU NEED TO USE SECURE
##  SETTINGS USE -- config/config.yml AND FOLLOW THE INSTRUCTIONS ON THAT PAGE
##  TO DEPLOY

require 'yaml'

# Loading variables for Omniauth providers

env = YAML.load_file("#{Rails.root}/config/settings.yml")['amazon_s3'][Rails.env]
