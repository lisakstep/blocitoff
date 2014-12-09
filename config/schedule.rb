# Learn more: http://github.com/javan/whenever

set :output, { error: 'error.log', standard: 'cron.log' }

every 4.hours do  
  rake "autodel"
end