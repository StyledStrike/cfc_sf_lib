
--- Called when a user sends a message on the Discord relay.
-- @client
-- @name DiscordMessage
-- @class hook
-- @param string name The user's name 
-- @param string message The user's message
SF.hookAdd( "CFC_ChatTransit_RemoteMessageReceive", "DiscordMessage", function( _instance, addTextParams )
    local user = string.sub( addTextParams[4], 2 ) -- Strip "@"
    local message = string.sub( addTextParams[6], 3 ) -- Strip ": "

    return true, { user, message }
end )
