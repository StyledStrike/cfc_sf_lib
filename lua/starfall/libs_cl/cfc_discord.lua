
--- Called when a user sends a message on the Discord relay.
-- @client
-- @name DiscordMessage
-- @class hook
-- @param string author The user's name
-- @param Color color The user's color
-- @param string message The user's message
SF.hookAdd( "CFC_ChatTransit_RemoteMessageReceive", "DiscordMessage", function( instance, author, authorColor, message )
    local color = instance.Types.Color.Wrap( authorColor )
    return true, { author, color, message }
end )
