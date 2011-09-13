require 'rubygems'
require 'belphanior/servant/servant'
require 'sinatra'

# An empty example; this is the simplest server that can be created.

# Must be called to install and configure default routing for
# '/', '/config', and '/protocol'
servant_init

add_role_description(
                     {
                       "name" => "time",
                       "description" => "Retrieves current time.",
                       "commands" => [
                                      {
                                        "name" => "get time string",
                                        "description" => 
                                        "Gets the current time as a string. ",
                                        "arguments" => [],
                                        "return" => "Current time string. " +
                                        "Example: Friday, September 9, 2011, " +
                                        "8:47 PM"
                                      },
                                     ]
                     })
add_handler("get time string", [], "GET", "/time/string", "") {
  current_time = Time.new
  current_time.strftime("%A, %B %d, %Y, %I:%M:%S %p")
}


