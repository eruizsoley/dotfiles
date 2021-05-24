-- set up your instance(s)
expose = hs.expose.new(nil,{showThumbnails=true}) -- default windowfilter, no thumbnails
expose_app = hs.expose.new(nil,{onlyActiveApplication=true}) -- show windows for the current application
expose_space = hs.expose.new(nil,{includeOtherSpaces=false}) -- only windows in the current Mission Control Space
expose_browsers = hs.expose.new{'Safari','Google Chrome'} -- specialized expose using a custom windowfilter
-- for your dozens of browser windows :)

-- then bind to a hotkey
hs.hotkey.bind('ctrl-cmd-option','n','Expose',function()expose:toggleShow()end)
hs.hotkey.bind('ctrl-cmd-option','t','App Expose',function()expose_app:toggleShow()end)
