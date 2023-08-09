local opened = false
local webBrowser
local initBrowser

bindKey("F1", "up", function()
    if opened then 
        opened = false
        destroyElement(initBrowser)
        showCursor(false)
        guiSetInputEnabled(false)

        return
    end

    opened = true
    outputChatBox("Opening Help Panel...")
    showCursor(true)
    guiSetInputEnabled(true)

    local sWidth, sHeight = guiGetScreenSize()
    initBrowser = guiCreateBrowser(0, 0, sWidth, sHeight, true, true, false)
    webBrowser = guiGetBrowser(initBrowser)
    addEventHandler("onClientBrowserCreated", webBrowser,function()
        loadBrowserURL(webBrowser, "http://mta/F1/web/index.html")
    end)

end)

addEvent("closeWeb", true)
addEventHandler("closeWeb", root, function() 
    if opened then 
        opened = false
        destroyElement(initBrowser)
        showCursor(false)
        guiSetInputEnabled(false)

    end
end)

bindKey("F2", "up", function()
    if not opened then
        return
    end
    executeBrowserJavascript(webBrowser, "document.querySelectorAll('.button').forEach(btn => {btn.style.backgroundColor = 'red';});")
end)
